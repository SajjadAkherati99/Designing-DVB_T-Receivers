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
extern char *STD_TEXTIO;
static const char *ng1 = "ramfile";
extern char *IEEE_P_3564397177;
static const char *ng3 = "Function init_bram ended without a return statement";
static const char *ng4 = "D:/my files/course/projects/RS_encoder/Dynamic_RAM1.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


char *work_a_0094937802_3212880686_sub_3601753670_3057020925(char *t1, char *t2, char *t3)
{
    char t4[208];
    char t5[24];
    char t15[32];
    char t24[2048];
    char t37[16];
    char *t0;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t38;
    char *t39;
    int t40;
    unsigned char t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    int t48;
    unsigned int t49;

LAB0:    t6 = ((STD_TEXTIO) + 3440);
    t7 = (t4 + 4U);
    t8 = xsi_create_file_variable_in_buffer(0, ng1, t6, 0, 0, 1);
    *((char **)t7) = t8;
    t9 = (t4 + 12U);
    t10 = ((STD_TEXTIO) + 3280);
    t11 = (t9 + 56U);
    *((char **)t11) = t10;
    t12 = (t9 + 40U);
    *((char **)t12) = 0;
    t13 = (t9 + 64U);
    *((int *)t13) = 1;
    t14 = (t9 + 48U);
    *((char **)t14) = 0;
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 255;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 255);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t15 + 16U);
    t20 = (t17 + 0U);
    *((int *)t20) = 7;
    t20 = (t17 + 4U);
    *((int *)t20) = 0;
    t20 = (t17 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 7);
    t19 = (t21 * -1);
    t19 = (t19 + 1);
    t20 = (t17 + 12U);
    *((unsigned int *)t20) = t19;
    t20 = (t4 + 84U);
    t22 = (t1 + 9952);
    t23 = (t20 + 88U);
    *((char **)t23) = t22;
    t25 = (t20 + 56U);
    *((char **)t25) = t24;
    xsi_type_set_default_value(t22, t24, 0);
    t26 = (t20 + 64U);
    t27 = (t22 + 80U);
    t28 = *((char **)t27);
    *((char **)t26) = t28;
    t29 = (t20 + 80U);
    *((unsigned int *)t29) = 2048U;
    t30 = (t5 + 4U);
    t31 = (t2 != 0);
    if (t31 == 1)
        goto LAB3;

LAB2:    t32 = (t5 + 12U);
    *((char **)t32) = t3;
    t33 = (t4 + 4U);
    t34 = *((char **)t33);
    t35 = (t1 + 16519);
    t38 = (t37 + 0U);
    t39 = (t38 + 0U);
    *((int *)t39) = 1;
    t39 = (t38 + 4U);
    *((int *)t39) = 63;
    t39 = (t38 + 8U);
    *((int *)t39) = 1;
    t40 = (63 - 1);
    t19 = (t40 * 1);
    t19 = (t19 + 1);
    t39 = (t38 + 12U);
    *((unsigned int *)t39) = t19;
    std_textio_file_open1(t34, t35, t37, (unsigned char)0);

LAB4:    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    t31 = std_textio_endfile(t7);
    t41 = (!(t31));
    if (t41 != 0)
        goto LAB5;

LAB7:    t6 = (t20 + 56U);
    t7 = *((char **)t6);
    t31 = (2048U != 2048U);
    if (t31 == 1)
        goto LAB13;

LAB14:    t0 = xsi_get_transient_memory(2048U);
    memcpy(t0, t7, 2048U);

LAB1:    xsi_access_variable_delete(t9);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t30) = t2;
    goto LAB2;

LAB5:    t18 = 0;
    t21 = 255;

LAB8:    if (t18 <= t21)
        goto LAB9;

LAB11:    goto LAB4;

LAB6:;
LAB9:    t8 = (t4 + 4U);
    t10 = *((char **)t8);
    std_textio_readline(STD_TEXTIO, (char *)0, t10, t9);
    t6 = (t20 + 56U);
    t7 = *((char **)t6);
    t40 = (t18 - 255);
    t19 = (t40 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t18);
    t42 = (8 - 1);
    t43 = (0 - t42);
    t44 = (t43 * -1);
    t44 = (t44 + 1);
    t44 = (t44 * 1U);
    t45 = (t44 * t19);
    t46 = (0 + t45);
    t6 = (t7 + t46);
    t47 = (8 - 1);
    t8 = (t37 + 0U);
    t10 = (t8 + 0U);
    *((int *)t10) = t47;
    t10 = (t8 + 4U);
    *((int *)t10) = 0;
    t10 = (t8 + 8U);
    *((int *)t10) = -1;
    t48 = (0 - t47);
    t49 = (t48 * -1);
    t49 = (t49 + 1);
    t10 = (t8 + 12U);
    *((unsigned int *)t10) = t49;
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, (char *)0, t9, t6, t37);

LAB10:    if (t18 == t21)
        goto LAB11;

LAB12:    t40 = (t18 + 1);
    t18 = t40;
    goto LAB8;

LAB13:    xsi_size_not_matching(2048U, 2048U, 0);
    goto LAB14;

LAB15:    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    std_textio_file_close(t7);
    xsi_error(ng3);
    t0 = 0;
    goto LAB1;

}

static void work_a_0094937802_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(53, ng4);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 8352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng4);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng4);
    t3 = (t0 + 3752U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(58, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 13780U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8496);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(59, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 13796U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8560);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(60, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 13812U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8624);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(61, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 13828U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8688);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(62, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 13844U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8752);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(63, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 13860U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8816);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(64, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 13876U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8880);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(65, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 13892U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 8944);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(66, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 13908U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9008);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(67, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 13924U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9072);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(68, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 13940U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9136);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(69, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t1 = (t0 + 13956U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9200);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(70, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t1 = (t0 + 13972U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9264);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(71, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t1 = (t0 + 13988U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9328);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(72, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t1 = (t0 + 14004U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9392);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(73, ng4);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t1 = (t0 + 3592U);
    t4 = *((char **)t1);
    t1 = (t0 + 14020U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t7 = (t3 + t16);
    t10 = (t0 + 9456);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(56, ng4);
    t3 = (t0 + 4072U);
    t10 = *((char **)t3);
    t3 = (t0 + 1192U);
    t11 = *((char **)t3);
    t3 = (t0 + 13780U);
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t11, t3);
    t13 = (t12 - 255);
    t14 = (t13 * -1);
    t15 = (8U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 8432);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_delta(t17, t16, 8U, 0LL);
    goto LAB9;

}


extern void work_a_0094937802_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0094937802_3212880686_p_0};
	static char *se[] = {(void *)work_a_0094937802_3212880686_sub_3601753670_3057020925};
	xsi_register_didat("work_a_0094937802_3212880686", "isim/RS_encoder_isim_beh.exe.sim/work/a_0094937802_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
