/////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
`ifndef __spi_vip_pkg_sv__
`define __spi_vip_pkg_sv__

package spi_vip_pkg;
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	typedef enum {BURST, SINGLE} transfer_type_e;
	typedef enum bit {READ=1'b0, WRITE=1'b1} transfer_mode_e;

	`include "sv/spi_agent.sv"
	`include "sv/spi_driver.sv"
	`include "sv/spi_monitor.sv"
	`include "sv/spi_seq_item.sv"
	`include "sv/spi_sequencer.sv"
	`include "sv/spi_uvc.sv"

endpackage
`endif
