///////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
///////////////////////////////////////////////////////
`ifndef __spi_uvc_cfg_sv__
`define __spi_uvc_cfg_sv__

class spi_uvc_cfg extends uvm_object;
	
	bit     cpol = 0;
	bit     cpha = 0;
	longint sclk_freq = 25_000_000;


	
	`uvm_object_utils_begin(spi_uvc_cfg);
		`uvm_field_int(cpol,      UVM_MEDIUM)
		`uvm_field_int(cpha,      UVM_MEDIUM)
		`uvm_field_int(sclk_freq, UVM_MEDIUM)
	`uvm_object_utils_end

	function new(string name = "spi_uvc_cfg");
		super.new(name);
	endfunction

	
endclass

`endif
