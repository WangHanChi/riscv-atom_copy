////////////////////////////////////////////////////////////////////   
//  File        : AtomRV_wb.v
//  Author      : Saurabh Singh (saurabh.s99100@gmail.com)
//  Description : Wishbone wrapper for Atom core
////////////////////////////////////////////////////////////////////

`include "AtomRV.v"

`default_nettype none

/*
    Wishbone wrapper for the atom cpu.
*/
module AtomRV_wb
(
    input   wire            wb_clk_i,
    input   wire            wb_rst_i,

    // === IBUS Wishbone Master Interface ===
    output  reg     [31:0]  iport_wb_adr_o,
    input   wire    [31:0]  iport_wb_dat_i,
    output  reg             iport_wb_cyc_o,
    output  reg             iport_wb_stb_o,
    input   wire            iport_wb_ack_i,


    // === DBUS Wishbone Master Interface === 
    output  reg     [31:0]  dport_wb_adr_o,
    output  reg     [31:0]  dport_wb_dat_o,
    input   wire    [31:0]  dport_wb_dat_i,
    output  reg             dport_wb_cyc_o,
    output  reg             dport_wb_stb_o,
    output  reg             dport_wb_we_o,
    output  reg     [3:0]   dport_wb_sel_o,  
    input   wire            dport_wb_ack_i

    // === IRQ Interface ===
    //input   wire    [31:0]  irq,
    //output  reg     [31:0]  eoi
);
    /////////////////////////////////////////////////////////////////
    wire    [31:0]  imem_addr_o;    // IMEM Address
    wire    [31:0]  imem_data_i;    // IMEM data

    wire            imem_valid_o;   // IMEM valid
    wire            imem_ack_i;     // IMEM Acknowledge
    

    wire    [31:0]  dmem_addr_o;    // DMEM address
    wire    [31:0]  dmem_data_i;    // DMEM data in
    wire    [31:0]  dmem_data_o;    // DMEM data out

    wire    [3:0]   dmem_sel_o;     // DMEM Access width
    wire            dmem_we_o;      // DMEM Access width

    wire            dmem_valid_o;   // DMEM Access width
    wire            dmem_ack_i;     // DMEM WriteEnable

    
    // Atom Core
    AtomRV atom_core
    (
        .clk_i          (wb_clk_i),
        .rst_i          (wb_rst_i),

        .imem_addr_o    (imem_addr_o),
        .imem_data_i    (imem_data_i),

        .imem_valid_o   (imem_valid_o),
        .imem_ack_i     (imem_ack_i),


        .dmem_addr_o    (dmem_addr_o),
        .dmem_data_i    (dmem_data_i),
        .dmem_data_o    (dmem_data_o),

        .dmem_sel_o     (dmem_sel_o),
        .dmem_we_o      (dmem_we_o),

        .dmem_valid_o   (dmem_valid_o),
        .dmem_ack_i     (dmem_ack_i) 
    );
    

	localparam WBIDLE = 1'b0;
	localparam WBACTIV = 1'b1;

    ////////////////////////////////////////////////////////////
    /// IPORT Wishbone Logic
    assign imem_ack_i = iport_wb_ack_i;
    assign imem_data_i = iport_wb_dat_i;

    reg iport_state = WBIDLE;

    always @(posedge wb_clk_i) begin
        if(wb_rst_i) begin
            iport_wb_adr_o <= 0;
            iport_wb_cyc_o <= 0;
            iport_wb_stb_o <= 0;
            iport_state <= WBIDLE;
        end
        else begin
            case(iport_state)
                WBIDLE: begin
                    if(imem_valid_o) begin
                        iport_wb_adr_o <= imem_addr_o;
                        iport_wb_cyc_o <= 1'b1;
                        iport_wb_stb_o <= 1'b1;
                        iport_state <= WBACTIV;
                    end else begin
                        iport_wb_cyc_o <= 1'b0;
                        iport_wb_stb_o <= 1'b0;
                    end
                end
                WBACTIV: begin
                    if(iport_wb_ack_i) begin
                        iport_wb_cyc_o <= 1'b0;
                        iport_wb_stb_o <= 1'b0;
                        iport_state <= WBIDLE;
                    end
                end
                default:
                    iport_state <= WBIDLE;
            endcase
        end
    end


    ////////////////////////////////////////////////////////////
    /// DPORT Wishbone Logic
    assign dmem_ack_i = dport_wb_ack_i;
    assign dmem_data_i = dport_wb_dat_i;

    reg dport_state = WBIDLE;

    always @(posedge wb_clk_i) begin
        if(wb_rst_i) begin
            dport_wb_adr_o <= 32'd00000000;
            dport_wb_dat_o <= 32'h00000000;
            dport_wb_cyc_o <= 1'b0;
            dport_wb_stb_o <= 1'b0;
            dport_wb_we_o  <= 1'b0;
            dport_wb_sel_o <= 4'b0000;
            dport_state <= WBIDLE;
        end
        else begin
            case(dport_state)
                WBIDLE: begin
                    if(dmem_valid_o) begin
                        dport_wb_adr_o <= dmem_addr_o;
                        dport_wb_dat_o <= dmem_data_o;
                        dport_wb_we_o <= dmem_we_o;
                        dport_wb_sel_o <= dmem_sel_o;
                        dport_wb_cyc_o <= 1'b1;
                        dport_wb_stb_o <= 1'b1;
                        dport_state <= WBACTIV;
                    end else begin
                        dport_wb_cyc_o <= 1'b0;
                        dport_wb_stb_o <= 1'b0;
                        dport_wb_we_o <= 1'b0;
                    end
                end
                WBACTIV: begin
                    if(dport_wb_ack_i) begin
                        dport_wb_cyc_o <= 1'b0;
                        dport_wb_stb_o <= 1'b0;
                        dport_wb_we_o <= 1'b0;
                        dport_state <= WBIDLE;
                    end
                end
                default:
                    dport_state <= WBIDLE;
            endcase
        end
    end



    // // output  reg     [31:0]  wb_ibus_adr_o,
    // // input   wire    [31:0]  wb_ibus_dat_i,

    // // output  reg             wb_ibus_cyc_o,
    // // output  reg             wb_ibus_stb_o,
    // // input   wire            wb_ibus_ack_i,
    

    // // assign wb_ibus_adr_o = imem_addr_o;
    // // assign imem_data_i = wb_ibus_dat_i;
    // // assign wb_ibus_stb_o = imem_valid_o;
    // // assign imem_ack_i = wb_ibus_ack_i;


    // ////////////////////////////////////////////////////////////
    // /// DBUS Wishbone Logic
    // assign dport_wb_adr_o   = dmem_addr_o;
    // assign dmem_data_i      = dport_wb_dat_i;
    // assign dport_wb_dat_o   = dmem_data_o;

    // assign dport_wb_sel_o   = dmem_sel_o;
    // assign dport_wb_we_o    = dmem_we_o;

    // assign dport_wb_stb_o   = dmem_valid_o;
    // assign dmem_ack_i       = dport_wb_ack_i;

    // assign dport_wb_cyc_o   = dport_wb_stb_o;
endmodule
