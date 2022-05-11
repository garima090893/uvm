import uvm_pkg::*;
`import "uvm_macros.svh"

// uvm_monitor -> uvm_component_utils
class ahb_monitor extends uvm_monitor;
    `uvm_component_utils(ahb_monitor)

    function new(input string inst, uvm_component c);
        super.new(inst, c);
    endfunction : new

    virtual function build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("AHB_MONITOR", "Build Phase", UVM_NONE)
    endfunction : build_phase

    virtual function connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("AHB_MONITOR", "Connect Phase",UVM_NONE)
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        `uvm_info("AHB_MONITOR", "Run Phase", UVM_NONE)
    endtask : run_phase

    virtual function report_phase(uvm_phase phase);
        `uvm_info("AHB_MONITOR", "Report Phase", UVM_NONE)
    endfunction : report_phase

endclass : ahb_monitor