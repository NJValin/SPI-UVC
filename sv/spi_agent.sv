////////////////////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
////////////////////////////////////////////////////////////////////

`default_nettype none
class spi_agent extends uvm_agent;

	spi_uvc_cfg   cfg;
	spi_driver    spi_drv;
	spi_sequencer spi_seqr;
	spi_monitor   spi_mon;

	`uvm_component_utils_begin(spi_agent)
	`uvm_component_utils_end

	function void build_phase(uvm_phase phase);
	    super.build_phase();

		cfg = spi_uvc_cfg::type_id::create("cfg", this);
		spi_mon = spi_monitor::type_id::create("spi_mon", this);
		if (get_is_active() == UVM_ACTIVE) begin
			spi_seqr = spi_sequencer::type_id::create("spi_seqr", this);
			spi_drv = spi_driver::type_id::create("spi_drv", this);
		end


	endfunction : build_phase

	virtual function void connect_phase(uvm_phase phase);
		if (get_is_active() == UVM_ACTIVE) begin

		end
	endfunction : connect_phase
	
endclass
