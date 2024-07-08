/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


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
extern void execute_13(char*, char *);
extern void execute_581(char*, char *);
extern void execute_24(char*, char *);
extern void execute_28(char*, char *);
extern void execute_33(char*, char *);
extern void execute_35(char*, char *);
extern void execute_37(char*, char *);
extern void execute_39(char*, char *);
extern void execute_44(char*, char *);
extern void execute_49(char*, char *);
extern void execute_53(char*, char *);
extern void execute_58(char*, char *);
extern void execute_63(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_77(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_159(char*, char *);
extern void execute_163(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_173(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_184(char*, char *);
extern void execute_189(char*, char *);
extern void execute_193(char*, char *);
extern void execute_196(char*, char *);
extern void execute_201(char*, char *);
extern void execute_207(char*, char *);
extern void execute_211(char*, char *);
extern void execute_215(char*, char *);
extern void execute_223(char*, char *);
extern void execute_228(char*, char *);
extern void execute_232(char*, char *);
extern void execute_237(char*, char *);
extern void execute_242(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_252(char*, char *);
extern void execute_259(char*, char *);
extern void execute_264(char*, char *);
extern void execute_268(char*, char *);
extern void execute_271(char*, char *);
extern void execute_274(char*, char *);
extern void execute_288(char*, char *);
extern void execute_292(char*, char *);
extern void execute_296(char*, char *);
extern void execute_300(char*, char *);
extern void execute_304(char*, char *);
extern void execute_313(char*, char *);
extern void execute_317(char*, char *);
extern void execute_321(char*, char *);
extern void execute_323(char*, char *);
extern void execute_325(char*, char *);
extern void execute_329(char*, char *);
extern void execute_336(char*, char *);
extern void execute_340(char*, char *);
extern void execute_354(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_370(char*, char *);
extern void execute_387(char*, char *);
extern void execute_391(char*, char *);
extern void execute_395(char*, char *);
extern void execute_399(char*, char *);
extern void execute_403(char*, char *);
extern void execute_407(char*, char *);
extern void execute_411(char*, char *);
extern void execute_414(char*, char *);
extern void execute_418(char*, char *);
extern void execute_421(char*, char *);
extern void execute_425(char*, char *);
extern void execute_430(char*, char *);
extern void execute_435(char*, char *);
extern void execute_439(char*, char *);
extern void execute_443(char*, char *);
extern void execute_447(char*, char *);
extern void execute_452(char*, char *);
extern void execute_456(char*, char *);
extern void execute_459(char*, char *);
extern void execute_462(char*, char *);
extern void execute_486(char*, char *);
extern void execute_491(char*, char *);
extern void execute_495(char*, char *);
extern void execute_500(char*, char *);
extern void execute_505(char*, char *);
extern void execute_510(char*, char *);
extern void execute_513(char*, char *);
extern void execute_518(char*, char *);
extern void execute_521(char*, char *);
extern void execute_524(char*, char *);
extern void execute_528(char*, char *);
extern void execute_532(char*, char *);
extern void execute_537(char*, char *);
extern void execute_545(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_235(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[134] = {(funcp)execute_13, (funcp)execute_581, (funcp)execute_24, (funcp)execute_28, (funcp)execute_33, (funcp)execute_35, (funcp)execute_37, (funcp)execute_39, (funcp)execute_44, (funcp)execute_49, (funcp)execute_53, (funcp)execute_58, (funcp)execute_63, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_77, (funcp)execute_79, (funcp)execute_80, (funcp)execute_159, (funcp)execute_163, (funcp)execute_166, (funcp)execute_168, (funcp)execute_173, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_179, (funcp)execute_180, (funcp)execute_184, (funcp)execute_189, (funcp)execute_193, (funcp)execute_196, (funcp)execute_201, (funcp)execute_207, (funcp)execute_211, (funcp)execute_215, (funcp)execute_223, (funcp)execute_228, (funcp)execute_232, (funcp)execute_237, (funcp)execute_242, (funcp)execute_245, (funcp)execute_249, (funcp)execute_252, (funcp)execute_259, (funcp)execute_264, (funcp)execute_268, (funcp)execute_271, (funcp)execute_274, (funcp)execute_288, (funcp)execute_292, (funcp)execute_296, (funcp)execute_300, (funcp)execute_304, (funcp)execute_313, (funcp)execute_317, (funcp)execute_321, (funcp)execute_323, (funcp)execute_325, (funcp)execute_329, (funcp)execute_336, (funcp)execute_340, (funcp)execute_354, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_362, (funcp)execute_363, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_370, (funcp)execute_387, (funcp)execute_391, (funcp)execute_395, (funcp)execute_399, (funcp)execute_403, (funcp)execute_407, (funcp)execute_411, (funcp)execute_414, (funcp)execute_418, (funcp)execute_421, (funcp)execute_425, (funcp)execute_430, (funcp)execute_435, (funcp)execute_439, (funcp)execute_443, (funcp)execute_447, (funcp)execute_452, (funcp)execute_456, (funcp)execute_459, (funcp)execute_462, (funcp)execute_486, (funcp)execute_491, (funcp)execute_495, (funcp)execute_500, (funcp)execute_505, (funcp)execute_510, (funcp)execute_513, (funcp)execute_518, (funcp)execute_521, (funcp)execute_524, (funcp)execute_528, (funcp)execute_532, (funcp)execute_537, (funcp)execute_545, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_61, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_140, (funcp)transaction_147, (funcp)transaction_154, (funcp)transaction_161, (funcp)transaction_207, (funcp)transaction_214, (funcp)transaction_221, (funcp)transaction_228, (funcp)transaction_235, (funcp)transaction_242, (funcp)transaction_249, (funcp)transaction_256, (funcp)transaction_263, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_284};
const int NumRelocateId= 134;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/lcd_controller_tb_func_synth/xsim.reloc",  (void **)funcTab, 134);
	iki_vhdl_file_variable_register(dp + 62800);
	iki_vhdl_file_variable_register(dp + 62856);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/lcd_controller_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/lcd_controller_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/lcd_controller_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/lcd_controller_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/lcd_controller_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
