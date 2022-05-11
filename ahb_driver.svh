import uvm_pkg::*;
`include "uvm_macros.svh"

// uvm_driver -> uvm_component
class ahb_driver extends uvm_driver;
    `uvm_component_utils(ahb_driver)

    function new(input string inst, uvm_component c);
        super.new(inst, c);
    endfunction : new

    virtual function build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("AHB_DRIVER", "Build Phase", UVM_NONE)
    endfunction : build_phase

    virtual function connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("AHB_DRIVER", "Connect Phase",UVM_NONE)
    endfunction : connect_phase

    virtual task run_phase(uvm_phase phase);
        `uvm_info("AHB_DRIVER", "Run Phase", UVM_NONE)
    endtask : run_phase

    virtual function report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("AHB_DRIVER", "Report Phase", UVM_NONE)
    endfunction : report_phase
    
endclass : ahb_driver