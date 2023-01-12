#include "atomsim.hpp"
#include "simstate.hpp"
#include <iostream>

#include TARGET_HEADER

Atomsim::Atomsim(Atomsim_config sim_config, Backend_config bk_config):
    sim_config_(sim_config),
    backend_(this, bk_config)  // create backend
{   
    if (sim_config_.verbose_flag)
		std::cout << "AtomSim [" << backend_.get_target_name() << "]" << std::endl;

    // get input file disassembly   
    disassembly_ = getDisassembly(sim_config_.ifile);
    
    // Open trace if specified at CLI
    if (sim_config_.trace_flag)
    {
        backend_.open_trace(sim_config.trace_file.c_str());
        trace_opened_ = true;
        if (sim_config_.verbose_flag)
            std::cout << "Trace enabled : \"" << sim_config.trace_file << "\" opened for output.\n";
    }
}


void Atomsim::step()
{
    // tick backend and update backend status
    int rcode = backend_.tick();
    bkend_running_ = (rcode == 0) ? true : false;
}


int Atomsim::run()
{
    // tick backend and update backend status, until ctrl+c is.
    try
    {
        bkend_running_ = true;  // assume this; since simulation is just started
        while (bkend_running_)
        {
            if(sim_config_.debug_flag || CTRL_C_PRESSED)
            {
                // we might enter here using ctrl+c also therefore need to set this
                sim_config_.debug_flag = true;  

                // enter interactive mode
                int rval = run_interactive_mode();

                if (rval == ATOMSIM_RCODE_EXIT)
                {
                    // back to run mode
                    sim_config_.debug_flag = false;
                    CTRL_C_PRESSED = false;
                }
                else if (rval == ATOMSIM_RCODE_EXIT_SIM)
                    return 0;   // exit sim
            }
            else
            {
                step();
            }
        }
    }
    catch(std::exception &e)
    {
        std::cerr << "Runtime exception: " << e.what() << std::endl;
        return 1;
    }
    return 0;
}
