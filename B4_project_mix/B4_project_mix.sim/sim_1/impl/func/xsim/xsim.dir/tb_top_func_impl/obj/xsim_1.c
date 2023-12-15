/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_218(char*, char *);
IKI_DLLESPEC extern void execute_219(char*, char *);
IKI_DLLESPEC extern void execute_220(char*, char *);
IKI_DLLESPEC extern void execute_221(char*, char *);
IKI_DLLESPEC extern void execute_490(char*, char *);
IKI_DLLESPEC extern void execute_491(char*, char *);
IKI_DLLESPEC extern void execute_492(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_229(char*, char *);
IKI_DLLESPEC extern void execute_230(char*, char *);
IKI_DLLESPEC extern void execute_231(char*, char *);
IKI_DLLESPEC extern void execute_450(char*, char *);
IKI_DLLESPEC extern void execute_452(char*, char *);
IKI_DLLESPEC extern void execute_454(char*, char *);
IKI_DLLESPEC extern void execute_456(char*, char *);
IKI_DLLESPEC extern void execute_457(char*, char *);
IKI_DLLESPEC extern void execute_17(char*, char *);
IKI_DLLESPEC extern void execute_18(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_21(char*, char *);
IKI_DLLESPEC extern void execute_241(char*, char *);
IKI_DLLESPEC extern void execute_242(char*, char *);
IKI_DLLESPEC extern void execute_243(char*, char *);
IKI_DLLESPEC extern void execute_244(char*, char *);
IKI_DLLESPEC extern void execute_245(char*, char *);
IKI_DLLESPEC extern void execute_246(char*, char *);
IKI_DLLESPEC extern void execute_247(char*, char *);
IKI_DLLESPEC extern void execute_248(char*, char *);
IKI_DLLESPEC extern void execute_240(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_63(char*, char *);
IKI_DLLESPEC extern void execute_64(char*, char *);
IKI_DLLESPEC extern void execute_299(char*, char *);
IKI_DLLESPEC extern void execute_300(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void execute_311(char*, char *);
IKI_DLLESPEC extern void execute_312(char*, char *);
IKI_DLLESPEC extern void execute_313(char*, char *);
IKI_DLLESPEC extern void execute_316(char*, char *);
IKI_DLLESPEC extern void execute_317(char*, char *);
IKI_DLLESPEC extern void execute_318(char*, char *);
IKI_DLLESPEC extern void execute_319(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void execute_348(char*, char *);
IKI_DLLESPEC extern void execute_349(char*, char *);
IKI_DLLESPEC extern void execute_350(char*, char *);
IKI_DLLESPEC extern void execute_351(char*, char *);
IKI_DLLESPEC extern void execute_347(char*, char *);
IKI_DLLESPEC extern void execute_90(char*, char *);
IKI_DLLESPEC extern void execute_91(char*, char *);
IKI_DLLESPEC extern void execute_223(char*, char *);
IKI_DLLESPEC extern void execute_224(char*, char *);
IKI_DLLESPEC extern void execute_225(char*, char *);
IKI_DLLESPEC extern void execute_226(char*, char *);
IKI_DLLESPEC extern void execute_493(char*, char *);
IKI_DLLESPEC extern void execute_494(char*, char *);
IKI_DLLESPEC extern void execute_495(char*, char *);
IKI_DLLESPEC extern void execute_496(char*, char *);
IKI_DLLESPEC extern void execute_497(char*, char *);
IKI_DLLESPEC extern void execute_498(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_281(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_289(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_343(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_375(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[105] = {(funcp)execute_218, (funcp)execute_219, (funcp)execute_220, (funcp)execute_221, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_227, (funcp)execute_5, (funcp)execute_228, (funcp)execute_7, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_450, (funcp)execute_452, (funcp)execute_454, (funcp)execute_456, (funcp)execute_457, (funcp)execute_17, (funcp)execute_18, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_21, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_240, (funcp)execute_31, (funcp)execute_32, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_311, (funcp)execute_312, (funcp)execute_313, (funcp)execute_316, (funcp)execute_317, (funcp)execute_318, (funcp)execute_319, (funcp)execute_83, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_351, (funcp)execute_347, (funcp)execute_90, (funcp)execute_91, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_226, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_43, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_61, (funcp)transaction_200, (funcp)transaction_204, (funcp)transaction_208, (funcp)transaction_212, (funcp)transaction_269, (funcp)transaction_273, (funcp)transaction_277, (funcp)transaction_281, (funcp)transaction_285, (funcp)transaction_289, (funcp)transaction_293, (funcp)transaction_297, (funcp)transaction_301, (funcp)transaction_305, (funcp)transaction_309, (funcp)transaction_313, (funcp)transaction_317, (funcp)transaction_321, (funcp)transaction_325, (funcp)transaction_339, (funcp)transaction_343, (funcp)transaction_347, (funcp)transaction_351, (funcp)transaction_355, (funcp)transaction_359, (funcp)transaction_363, (funcp)transaction_367, (funcp)transaction_371, (funcp)transaction_375, (funcp)transaction_379};
const int NumRelocateId= 105;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_top_func_impl/xsim.reloc",  (void **)funcTab, 105);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_top_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_top_func_impl/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_top_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_top_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_top_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
