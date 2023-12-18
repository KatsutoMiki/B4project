#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <Windows.h>
#include <tchar.h>
#include <time.h>


int main() {
    HANDLE hComPort; //COMポートのハンドル

    //CreateFile(ポート名を指すバッファへのポインタ,アクセスモード(読み書き),ポートの共有方法,セキュリティ属性,ポートの開き方の指定,同期or非同期,テンプレートファイルへのハンドル(NULLで良い))
    //COMポートの番号が1桁の場合は_T("COM〇")、2桁の場合は_T("\\\\.\\COM〇")にする必要がある
    hComPort = CreateFile(_T("\\\\.\\COM16"),GENERIC_READ,0,NULL,OPEN_EXISTING,0,NULL);

    if (hComPort == INVALID_HANDLE_VALUE) {
        printf("指定のポートが開けません\r\n");
        CloseHandle(hComPort);
        return 0;
    } else {
        printf("COMポートが開けました\r\n");
    }

    int check; //エラーチェック用の変数

    check = SetupComm(hComPort,1024,0); //SetupComm(ポートのハンドル,受信バッファサイズ,送信バッファサイズ)

    if (check == FALSE){
        printf("受信バッファの設定が出来ません\r\n");
        CloseHandle(hComPort);
        return 0;
    } else {
        printf("受信バッファの設定が完了しました\r\n");
    }

    check = PurgeComm(hComPort,PURGE_RXABORT|PURGE_RXCLEAR);

    if (check == FALSE){
        printf("受信バッファを初期化出来ません\r\n");
        CloseHandle(hComPort);
        return 0;
    } else {
        printf("受信バッファを初期化しました\r\n");
    }

    DCB dcb; //構成情報を記録する構造体の生成
    GetCommState(hComPort, &dcb); //現在の設定値を読み込み

    dcb.DCBlength = sizeof(DCB); //DCBのサイズ
    dcb.BaudRate = 500000; //ボーレート:500000bps
    dcb.ByteSize = 8; //データサイズ:8bit
    dcb.fBinary = TRUE; //バイナリモード:通常TRUE
    dcb.fParity = NOPARITY; //パリティビット:パリティビットなし
    dcb.StopBits = ONESTOPBIT; //ストップビット:1bit
    dcb.fOutxCtsFlow = FALSE; //CTSフロー制御:フロー制御なし
    dcb.fOutxDsrFlow = FALSE; //DSRハードウェアフロー制御：使用しない
    dcb.fDtrControl = DTR_CONTROL_DISABLE; //DTR有効/無効:DTR無効
    dcb.fRtsControl = RTS_CONTROL_DISABLE; //RTSフロー制御:RTS制御なし

    dcb.fOutX = FALSE; //送信時XON/XOFF制御の有無:なし
    dcb.fInX = FALSE; //受信時XON/XOFF制御の有無:なし
    dcb.fTXContinueOnXoff = FALSE; // 受信バッファー満杯＆XOFF受信後の継続送信可否:送信不可
    dcb.XonLim = 512; //XONが送られるまでに格納できる最小バイト数:512
    dcb.XoffLim = 512; //XOFFが送られるまでに格納できる最小バイト数:512
    dcb.XonChar = 0x11; //送信時XON文字(送信可：ビジー解除)の指定:XON文字として11H (デバイス制御１：DC1) (ASCIIの転送時しか使えない)
    dcb.XoffChar = 0x13; //XOFF文字(送信不可：ビジー通告)の指定:XOFF文字として13H (デバイス制御3：DC3) (ASCIIの転送時しか使えない)

    dcb.fNull = FALSE; // NULLバイトの破棄:破棄する
    dcb.fAbortOnError = TRUE; //エラー時の読み書き操作終了:終了する
    dcb.fErrorChar = FALSE; //パリティエラー発生時のキャラクタ（ErrorChar）置換:なし
    dcb.ErrorChar = 0x00; //パリティエラー発生時の置換キャラクタ
    dcb.EofChar = 0x03; //データ終了通知キャラクタ:一般に0x03(ETX)がよく使われる
    dcb.EvtChar = 0x02; //イベント通知キャラクタ:一般に0x02(STX)がよく使われる

    check = SetCommState(hComPort, &dcb);  //設定値の書き込み
    if (check == FALSE) {
        printf("COMポート構成情報の変更に失敗しました\r\n");
        CloseHandle(hComPort);
        return 0;
    } else {
        printf("COMポート構成情報を変更しました\r\n");
    }

    COMMTIMEOUTS TimeOut; // COMMTIMEOUTS構造体の変数を宣言
    GetCommTimeouts(hComPort, &TimeOut); // タイムアウトの設定状態を取得

    TimeOut.ReadTotalTimeoutMultiplier = 0;//読込の１文字あたりの時間:タイムアウトなし
    TimeOut.ReadTotalTimeoutConstant = 0;//読込エラー検出用のタイムアウト時間
    //(受信トータルタイムアウト) = ReadTotalTimeoutMultiplier × (受信予定バイト数) + ReadTotalTimeoutConstant
    TimeOut.WriteTotalTimeoutMultiplier = 0;//書き込み１文字あたりの待ち時間:タイムアウトなし
    TimeOut.WriteTotalTimeoutConstant = 0;//書き込みエラー検出用のタイムアウト時間
    //(送信トータルタイムアウト) = WriteTotalTimeoutMultiplier ×(送信予定バイト数) + WriteTotalTimeoutConstant

    check = SetCommTimeouts(hComPort, &TimeOut);//タイムアウト設定の書き換え
    if (check == FALSE) {
        printf("タイムアウトの設定に失敗しました\r\n");
        CloseHandle(hComPort);
        return 0;
    } else {
        printf("タイムアウトの設定に成功しました\r\n");
    }
    
    
    int i = 0;
    int start = 0;
    int j = 0;
    long cpu_time;
    double sec;
    uint16_t RecieveChar[1];//1文字受信のための変数
    uint16_t RecieveData[100];
    unsigned long int nn;
    size_t capa = 1;
    size_t new_capa;
    char **ary = calloc(capa, sizeof(char *));
    size_t byte;
    size_t size;
    

    while(TRUE){
        ReadFile(hComPort, RecieveChar, 1, &nn, 0);
        if(nn == 1){
            if(RecieveChar[0] == 255){
                start++;
                if(start == 2){
                    break;
                }
            }
        }
    }

    while(j < 10000){
        ReadFile(hComPort, RecieveChar, 2, &nn, 0);
        //printf("%x\n", RecieveChar[0]);
        if(nn == 2){
            if(RecieveChar[0] == 65535){
                if(i != 0){
                    i = 0;
                    ary[j] = calloc(100,sizeof(char));
                    snprintf(ary[j],100,"%d,%d,%d,%d\n", j,RecieveData[0],RecieveData[1],RecieveData[2]);
                    new_capa = capa + 1;  // 新しい配列の要素数
                    byte = sizeof(char *);  // 要素1つのバイト数
                    size = new_capa * byte;  // 全体のバイト数
                    ary = realloc(ary, size);
                    capa = new_capa;
                    j++;
                }
            } else {
                RecieveData[i] = RecieveChar[0];
                i++;
            }
        }
    }
    

    FILE *fp;
    fp = fopen("Serial4.csv", "w");
    if(fp == NULL){
        printf("ファイルが開けません\r\n");
        return 0;
    } else {
        printf("ファイルが開けました\r\n");
    }

    printf("書き込み開始\r\n");

    for(size_t k = 0; k < capa; k += 1){
        fprintf(fp,"%s\r\n",ary[k]);
        free(ary[k]);
    }

    free(ary);
    fclose(fp);
}