import uvm_pkg::*;
`include "uvm_macros.svh"

// uvm_env -> uvm_component
class ahb_env extends uvm_env;
    `uvm_component_utils(ahb_env)

    ahb_agent agent;
    function new(input string inst, uvm_component c);
        super.new(inst, c);
    endfunction : new

    virtual function build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("AHB_ENV", "Build Phase", UVM_NONE);
        agent = ahb_agent::type_id::create("AHB_AGENT", this);
    endfunction : build_phase

    virtual function connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("AHB_ENV", "Connect Phase", UVM_NONE)
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        `uvm_info("AHB_ENV", "Run Phase", UVM_NONE)
    endtask : run_phase

    virtual function report_phase(uvm_phase phase);
        `uvm_info("AHB_ENV", "Report Phase", UVM_NONE)
    endfunction : report_phase
    
endclass : ahb_env