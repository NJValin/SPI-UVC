///////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
///////////////////////////////////////////////////////
`ifndef __spi_uvc_pkg_sv__
`define __spi_uvc_pkg_sv__

package spi_uvc_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	typedef enum {BURST, SINGLE} transfer_type_e;
	typedef enum bit {READ=1'b0, WRITE=1'b1} transfer_mode_e;

	`include "spi_uvc_cfg.sv"
	`include "spi_seq_item.sv"
	`include "spi_monitor.sv"
	`include "spi_driver.sv"
	`include "spi_sequencer.sv"
	`include "spi_agent.sv"
	`include "spi_uvc.sv"

endpackage
`endif
