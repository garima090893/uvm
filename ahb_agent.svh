import uvm_pkg::*;
`include "uvm_macros.svh"

// uvm_agent -> uvm_component
class ahb_agent extends uvm_agent;
    `uvm_component_utils(ahb_agent)

    ahb_monitor monitor;
    ahb_driver driver;

    function new(input string inst, uvm_component c);
        super.new(inst, c);
    endfunction : new

    virtual function build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("AHB_AGENT", "Build Phase", UVM_NONE);
        monitor = ahb_monitor::type_id::create("AHB_MONITOR", this);
        driver = ahb_driver::type_id::create("AHB_DRIVER", this);
    endfunction : build_phase

    virtual function connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("AHB_AGENT","Connect Phase", UVM_NONE)
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        `uvm_info("AHB_AGENT","Run Phase", UVM_NONE)
    endtask : run_phase

    virtual function report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("AHB_AGENT","Report Phase", UVM_NONE)
    endfunction : report_phase
endclass : ahb_agent