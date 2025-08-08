//////////////////////////////////////////////////////
// Copyright (c) 2025 Neil Valin. All Rights Reserved.
//
//////////////////////////////////////////////////////
`ifndef __spi_interface_sv__
`define __spi_interface_sv__

`default_nettype none
interface spi_interface (
		inout wire csb,
		inout wire sclk,
		inout wire mosi, // Used as a shared IO in 3-wire
		inout wire miso  // Not used in 3-wire
	);
	logic four_wire;

	logic if_csb;
	logic if_sclk;
	logic if_mosi;
	logic if_miso;

	assign csb  = if_csb;
	assign sclk = if_sclk;
	assign mosi = if_mosi; // Only control the mosi line w
	assign miso = (four_wire)?if_miso:1'bz;


endinterface

`endif
