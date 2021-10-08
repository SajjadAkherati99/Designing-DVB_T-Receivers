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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001556600840_0543152122_init();
    work_m_00000000000109325685_4081553358_init();
    work_m_00000000003279954200_0856793067_init();
    work_m_00000000001749471072_2829055634_init();
    work_m_00000000001810130472_0292595792_init();
    work_m_00000000000663351690_3522138912_init();
    work_m_00000000003744539322_2699604818_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003744539322_2699604818");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
