////////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
////////////////////////////////////////////////////////
`ifndef __spi_driver_sv__
`define __spi_driver_sv__

class spi_driver extends uvm_driver #(spi_seq_item);
	
	virtual spi_interface vif;
	
	`uvm_component_utils(spi_driver);

	function new(string name = "spi_driver", uvm_component parent);
		super.new(name, parent);
	endfunction


	task run_phase(uvm_phase phase);
	    phase.raise_objection(this);
		
		case (req.)
			
			default : 
		endcase

		phase.drop_objection(this);
	endtask : run_phase 
	
endclass

`endif
