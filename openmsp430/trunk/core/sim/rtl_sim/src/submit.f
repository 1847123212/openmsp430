//=============================================================================
// Copyright (C) 2001 Authors
//
// This source file may be used and distributed without restriction provided
// that this copyright statement is not removed from the file and that any
// derivative work contains the original copyright notice and the associated
// disclaimer.
//
// This source file is free software; you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published
// by the Free Software Foundation; either version 2.1 of the License, or
// (at your option) any later version.
//
// This source is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
// FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
// License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this source; if not, write to the Free Software Foundation,
// Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
//
//-----------------------------------------------------------------------------
// 
// File Name: submit.f
// 
// Author(s):
//             - Olivier Girard,    olgirard@gmail.com
//
//-----------------------------------------------------------------------------
// $Rev$
// $LastChangedBy$
// $LastChangedDate$
//=============================================================================

//=============================================================================
// Module specific modules
//=============================================================================
+incdir+../../../rtl/verilog/
../../../rtl/verilog/openMSP430_defines.v
../../../rtl/verilog/openMSP430.v
../../../rtl/verilog/omsp_frontend.v
../../../rtl/verilog/omsp_execution_unit.v
../../../rtl/verilog/omsp_register_file.v
../../../rtl/verilog/omsp_alu.v
../../../rtl/verilog/omsp_mem_backbone.v
../../../rtl/verilog/omsp_clock_module.v
../../../rtl/verilog/omsp_sfr.v
../../../rtl/verilog/omsp_dbg.v
../../../rtl/verilog/omsp_dbg_hwbrk.v
../../../rtl/verilog/omsp_dbg_uart.v
../../../rtl/verilog/omsp_watchdog.v
../../../rtl/verilog/omsp_multiplier.v
../../../rtl/verilog/periph/omsp_gpio.v
../../../rtl/verilog/periph/omsp_timerA.v
../../../rtl/verilog/periph/template_periph_8b.v
../../../rtl/verilog/periph/template_periph_16b.v


//=============================================================================
// Testbench related
//=============================================================================

+incdir+../../../bench/verilog/
../../../bench/verilog/tb_openMSP430.v
../../../bench/verilog/ram.v
../../../bench/verilog/msp_debug.v
