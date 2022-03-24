module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 col_driver col_driver_west (
    .vccd1(vccd1),	// User area 1 3.3V power
    .vssd1(vssd1),	// User area 1 analog ground
    .Vref	(analog_io[5]), // analog I/O
    .Vgpc	(analog_io[0]), // analog I/O
    .Vgnc	(analog_io[3]), // analog I/O
    .Vc_plus	(analog_io[1]), // analog I/O
    .Vc_minus	(analog_io[4]), // analog I/O
    .SWref	(io_in[1]),	// GPIO input
    .SWc_plus	(io_in[0]),	// GPIO input
    .SWc_minus	(io_in[2]),	// GPIO input
    
endmodule
