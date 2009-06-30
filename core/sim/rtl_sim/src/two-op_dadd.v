/*===========================================================================*/
/* Copyright (C) 2001 Authors                                                */
/*                                                                           */
/* This source file may be used and distributed without restriction provided */
/* that this copyright statement is not removed from the file and that any   */
/* derivative work contains the original copyright notice and the associated */
/* disclaimer.                                                               */
/*                                                                           */
/* This source file is free software; you can redistribute it and/or modify  */
/* it under the terms of the GNU Lesser General Public License as published  */
/* by the Free Software Foundation; either version 2.1 of the License, or    */
/* (at your option) any later version.                                       */
/*                                                                           */
/* This source is distributed in the hope that it will be useful, but WITHOUT*/
/* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or     */
/* FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public       */
/* License for more details.                                                 */
/*                                                                           */
/* You should have received a copy of the GNU Lesser General Public License  */
/* along with this source; if not, write to the Free Software Foundation,    */
/* Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA        */
/*                                                                           */
/*===========================================================================*/
/*                 TWO-OPERAND ARITHMETIC: DADD[.B] INSTRUCTION              */
/*---------------------------------------------------------------------------*/
/* Test the DADD[.B] instruction.                                            */
/*===========================================================================*/

initial
   begin
      $display(" ===============================================");
      $display("|                 START SIMULATION              |");
      $display(" ===============================================");
      repeat(5) @(posedge mclk);
      stimulus_done = 0;


      // DADD (WORD MODE)
      //--------------------------------------------------------
      @(r15==16'h1000);

      if (r5    !==16'h1237) tb_error("====== DADD without Carry =====");
      if (r6    !==16'h7111) tb_error("====== DADD with Carry =====");


      // DADD.B (BYTE MODE)
      //--------------------------------------------------------
      @(r15==16'h2000);

      if (r5    !==16'h0037) tb_error("====== DADD.B  without Carry =====");
      if (r6    !==16'h0071) tb_error("====== DADD.B  with Carry =====");


      // DADD (WORD MODE): Check Flags
      //--------------------------------------------------------

      @(r15==16'h3000);
      if (r2    !==16'h0000) tb_error("====== DADD FLAG: Flag   check error: V=0, N=0, Z=0, C=0 =====");
      if (r5    !==16'h7999) tb_error("====== DADD FLAG: Result check error: V=0, N=0, Z=0, C=0 =====");

      @(r15==16'h3001);
      if (r2    !==16'h0001) tb_error("====== DADD FLAG: Flag   check error: V=0, N=0, Z=0, C=1 =====");
      if (r5    !==16'h0002) tb_error("====== DADD FLAG: Result check error: V=0, N=0, Z=0, C=1 =====");

      @(r15==16'h3002);
      if (r2    !==16'h0003) tb_error("====== DADD FLAG: Flag   check error: V=0, N=0, Z=1, C=1 =====");
      if (r5    !==16'h0000) tb_error("====== DADD FLAG: Result check error: V=0, N=0, Z=1, C=1 =====");

      @(r15==16'h3003);
      if (r2    !==16'h0104) tb_error("====== DADD FLAG: Flag   check error: V=1, N=1, Z=0, C=0 =====");
      if (r5    !==16'h8002) tb_error("====== DADD FLAG: Result check error: V=1, N=1, Z=0, C=0 =====");


      // DADD.B (BYTE MODE): Check Flags
      //--------------------------------------------------------

      @(r15==16'h4000);
      if (r2    !==16'h0000) tb_error("====== DADD.B FLAG: Flag   check error: V=0, N=0, Z=0, C=0 =====");
      if (r5    !==16'h0079) tb_error("====== DADD.B FLAG: Result check error: V=0, N=0, Z=0, C=0 =====");

      @(r15==16'h4001);
      if (r2    !==16'h0001) tb_error("====== DADD.B FLAG: Flag   check error: V=0, N=0, Z=0, C=1 =====");
      if (r5    !==16'h0002) tb_error("====== DADD.B FLAG: Result check error: V=0, N=0, Z=0, C=1 =====");

      @(r15==16'h4002);
      if (r2    !==16'h0003) tb_error("====== DADD.B FLAG: Flag   check error: V=0, N=0, Z=1, C=1 =====");
      if (r5    !==16'h0000) tb_error("====== DADD.B FLAG: Result check error: V=0, N=0, Z=1, C=1 =====");

      @(r15==16'h4003);
      if (r2    !==16'h0104) tb_error("====== DADD.B FLAG: Flag   check error: V=1, N=1, Z=0, C=0 =====");
      if (r5    !==16'h0082) tb_error("====== DADD.B FLAG: Result check error: V=1, N=1, Z=0, C=0 =====");


      stimulus_done = 1;
   end

