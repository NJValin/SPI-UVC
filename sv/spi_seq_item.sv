///////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
// 
// 
// ////////////////////////////////////////////////////

`ifndef __spi_seq_item_sv__
`define __spi_seq_item_sv__

`default_nettype none
class spi_seq_item extends uvm_sequence_item;
	rand transfer_type_e transfer_type;
	rand transfer_mode_e transfer_mode;
	rand bit             read_write_b;
	rand logic [7:0]     tx_address[];
	rand logic [7:0]     tx_data[];
	rand logic [7:0]     rx_address[];
	rand logic [7:0]     rx_data[];


	function new(string name = "spi_seq_item");
		super.new(name);
	endfunction

	`uvm_object_utils_begin  (spi_seq_item)
		`uvm_field_enum      (transfer_type_e, transfer_type, UVM_DEFAULT)
		`uvm_field_array_int (tx_address,                     UVM_DEFAULT)
		`uvm_field_array_int (tx_data,                        UVM_DEFAULT)
		`uvm_field_array_int (rx_address,                     UVM_DEFAULT)
		`uvm_field_array_int (rx_data,                        UVM_DEFAULT)
	`uvm_object_utils_end
	
endclass


`endif
