///////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
///////////////////////////////////////////////////////
`ifndef __spi_uvc_cfg_sv__
`define __spi_uvc_cfg_sv__

class spi_uvc_cfg extends uvm_object;
	
	uvm_active_passive_enum is_active = UVM_PASSIVE;
	bit     cpol      = 0;
	bit     cpha      = 0;
	longint sclk_freq = 25_000_000;
	bit     four_wire = 1; // If 0, then SPI will be in 3-wire


	
	`uvm_object_utils_begin(spi_uvc_cfg);
		`uvm_field_enum(uvm_passive_enum, is_active, UVM_DEFAULT)
		`uvm_field_int(cpol,      UVM_DEFAULT)
		`uvm_field_int(cpha,      UVM_DEFAULT)
		`uvm_field_int(sclk_freq, UVM_DEFAULT)
		`uvm_field_int(four_wire, UVM_DEFAULT)
	`uvm_object_utils_end

	function new(string name = "spi_uvc_cfg");
		super.new(name);
	endfunction

	
endclass

`endif
