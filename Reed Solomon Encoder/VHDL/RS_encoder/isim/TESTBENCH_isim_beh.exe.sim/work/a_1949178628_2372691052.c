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
static const char *ng0 = "D:/my files/course/projects/RS_encoder/VHDL/RS_encoder/TESTBENCH.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


static void work_a_1949178628_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_2372691052_p_1(char *t0)
{
    char t8[16];
    char t13[8];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    int t11;
    char *t12;
    int t14;
    int64 t15;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t3 = (105 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4224);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2256U);
    t4 = (t0 + 7224);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 10;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (10 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    std_textio_file_open1(t2, t4, t8, (unsigned char)0);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2360U);
    t4 = (t0 + 7234);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 10;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (10 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    std_textio_file_open1(t2, t4, t8, (unsigned char)1);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7244);
    *((int *)t2) = 0;
    t4 = (t0 + 7248);
    *((int *)t4) = 255;
    t9 = 0;
    t11 = 255;

LAB8:    if (t9 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2256U);
    std_textio_file_close(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2360U);
    std_textio_file_close(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t15 = (t3 * 10);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t15);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(73, ng0);
    t5 = (t0 + 3320);
    t6 = (t0 + 2256U);
    t7 = (t0 + 2536U);
    std_textio_readline(STD_TEXTIO, t5, t6, t7);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3320);
    t4 = (t0 + 2536U);
    t5 = (t0 + 1928U);
    t6 = *((char **)t5);
    t5 = (t0 + 7016U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t2 = (t0 + 4288);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7244);
    t9 = *((int *)t2);
    t4 = (t0 + 7248);
    t11 = *((int *)t4);
    if (t9 == t11)
        goto LAB11;

LAB16:    t14 = (t9 + 1);
    t9 = t14;
    t5 = (t0 + 7244);
    *((int *)t5) = t9;
    goto LAB8;

LAB12:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3320);
    t4 = (t0 + 2608U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    memcpy(t13, t6, 8U);
    t5 = (t0 + 7000U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t4, t13, t5, (unsigned char)0, 0);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3320);
    t4 = (t0 + 2360U);
    t5 = (t0 + 2608U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    goto LAB10;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(88, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}

static void work_a_1949178628_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;

LAB0:    t1 = (t0 + 3760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t3 = (10000 * 1000LL);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);
    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 7252);
    xsi_report(t2, 16U, (unsigned char)3);
    goto LAB9;

}


extern void work_a_1949178628_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1949178628_2372691052_p_0,(void *)work_a_1949178628_2372691052_p_1,(void *)work_a_1949178628_2372691052_p_2};
	xsi_register_didat("work_a_1949178628_2372691052", "isim/TESTBENCH_isim_beh.exe.sim/work/a_1949178628_2372691052.didat");
	xsi_register_executes(pe);
}
