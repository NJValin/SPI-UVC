///////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
///////////////////////////////////////////////////////
`ifndef __spi_read_sequence_sv__
`define __spi_read_sequence_sv__

class spi_read_sequence extends uvm_sequence #(spi_seq_item);
	
	rand logic[7:0] address;
	
	`uvm_object_utils(spi_read_sequence);

	function new(string name = "spi_read_sequence");
		super.new(name);
	endfunction

	virtual task body();
		spi_seq_item tr;
		tr = spi_seq_item::type_id::create("tr");

		if (!randomize(address)) begin
			address = 8'h00;
		end
		
	endtask
	
endclass

`endif
