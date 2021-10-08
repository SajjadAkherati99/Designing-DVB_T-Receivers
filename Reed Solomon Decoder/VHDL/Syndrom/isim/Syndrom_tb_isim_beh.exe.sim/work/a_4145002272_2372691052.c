/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/my_files/course/projects/RS_decoder/VHDL/Syndrom/Syndrom_tb.vhd";
extern char *STD_TEXTIO;
extern char *STD_STANDARD;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_4145002272_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 6360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 6360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4145002272_2372691052_p_1(char *t0)
{
    char t6[16];
    char t15[16];
    char t17[16];
    char t23[16];
    char t25[16];
    char t29[16];
    char t35[16];
    char t40[16];
    char t42[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    int64 t12;
    int t13;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    char *t22;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t39;
    char *t41;
    char *t43;
    char *t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    t1 = (t0 + 5976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 4448U);
    t3 = *((char **)t2);
    t2 = (t0 + 4896U);
    t4 = (t0 + 10670);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 26;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (26 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = std_textio_file_open2(t2, t4, t6, (unsigned char)0);
    *((unsigned char *)t3) = t11;
    xsi_set_current_line(160, ng0);
    t12 = (10 * 1000LL);
    t2 = (t0 + 5784);
    xsi_process_wait(t2, t12);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 6424);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 5784);
    t3 = (t0 + 4896U);
    t4 = (t0 + 5072U);
    std_textio_readline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 10696);
    *((int *)t2) = 1;
    t3 = (t0 + 10700);
    *((int *)t3) = 256;
    t9 = 1;
    t13 = 256;

LAB8:    if (t9 <= t13)
        goto LAB9;

LAB11:    xsi_set_current_line(172, ng0);
    t2 = (t0 + 4896U);
    std_textio_file_close(t2);
    xsi_set_current_line(173, ng0);
    if ((unsigned char)0 == 0)
        goto LAB17;

LAB18:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(167, ng0);
    t12 = (10 * 1000LL);
    t4 = (t0 + 5784);
    xsi_process_wait(t4, t12);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 10696);
    t9 = *((int *)t2);
    t3 = (t0 + 10700);
    t13 = *((int *)t3);
    if (t9 == t13)
        goto LAB11;

LAB16:    t20 = (t9 + 1);
    t9 = t20;
    t4 = (t0 + 10696);
    *((int *)t4) = t9;
    goto LAB8;

LAB12:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 5784);
    t3 = (t0 + 5072U);
    t4 = (t0 + 4328U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 10704);
    t4 = ((STD_STANDARD) + 384);
    t5 = (t0 + 10696);
    t7 = xsi_int_to_mem(*((int *)t5));
    t8 = xsi_string_variable_get_image(t6, t4, t7);
    t16 = ((STD_STANDARD) + 1008);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 1;
    t19 = (t18 + 4U);
    *((int *)t19) = 5;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (5 - 1);
    t10 = (t20 * 1);
    t10 = (t10 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t10;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)97, t2, t17, (char)97, t8, t6, (char)101);
    t19 = (t0 + 10709);
    t24 = ((STD_STANDARD) + 1008);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 1;
    t27 = (t26 + 4U);
    *((int *)t27) = 3;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (3 - 1);
    t10 = (t28 * 1);
    t10 = (t10 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t10;
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t14, t15, (char)97, t19, t25, (char)101);
    t27 = ((STD_STANDARD) + 384);
    t30 = (t0 + 4328U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t30 = xsi_int_to_mem(t32);
    t33 = xsi_string_variable_get_image(t29, t27, t30);
    t36 = ((STD_STANDARD) + 1008);
    t34 = xsi_base_array_concat(t34, t35, t36, (char)97, t22, t23, (char)97, t33, t29, (char)101);
    t37 = (t0 + 10712);
    t41 = ((STD_STANDARD) + 1008);
    t43 = (t42 + 0U);
    t44 = (t43 + 0U);
    *((int *)t44) = 1;
    t44 = (t43 + 4U);
    *((int *)t44) = 1;
    t44 = (t43 + 8U);
    *((int *)t44) = 1;
    t45 = (1 - 1);
    t10 = (t45 * 1);
    t10 = (t10 + 1);
    t44 = (t43 + 12U);
    *((unsigned int *)t44) = t10;
    t39 = xsi_base_array_concat(t39, t40, t41, (char)97, t34, t35, (char)97, t37, t42, (char)101);
    t44 = (t6 + 12U);
    t10 = *((unsigned int *)t44);
    t46 = (5U + t10);
    t47 = (t46 + 3U);
    t48 = (t29 + 12U);
    t49 = *((unsigned int *)t48);
    t50 = (t47 + t49);
    t51 = (t50 + 1U);
    xsi_report(t39, t51, 0);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t20, 8);
    t4 = (t0 + 6488);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    memcpy(t14, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    t2 = (t0 + 10713);
    xsi_report(t2, 19U, (unsigned char)3);
    goto LAB18;

}


extern void work_a_4145002272_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4145002272_2372691052_p_0,(void *)work_a_4145002272_2372691052_p_1};
	xsi_register_didat("work_a_4145002272_2372691052", "isim/Syndrom_tb_isim_beh.exe.sim/work/a_4145002272_2372691052.didat");
	xsi_register_executes(pe);
}
