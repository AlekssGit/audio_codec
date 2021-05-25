`define R0  7'h00   // Left-channel ADC input volume
`define R1  7'h01   // Right-channel ADC input volume 
`define R2  7'h02   // Left-channel DAC volume
`define R3  7'h03   // Right-channel DAC volume
`define R4  7'h04   // Analogue audio path
`define R5  7'h05   // Digital audio path
`define R6  7'h06   // Power management
`define R7  7'h07   // Digital audio I/F
`define R8  7'h08   // Sampling rate
`define R9  7'h09   // Active
`define R15 7'h0F   // Software reset
`define R16 7'h10   // ALC Control 1
`define R17 7'h11   // ALC Control 2
`define R18 7'h12   // Noise gate

//Defines for special registers

`define PLAYBACK_ONLY       8'b01100111; //For power management register
`define DIGITAL_AUDIO_PATH  8'b00000100; //For Digital Audio Path - 44.1 kgz
`define DIGITAL_AUDIO_IF    8'b00000010; //For Digital Audio I/F - 16 bits Data-word length
`define SAMPLING_RATE       8'b00010000; //Sampling rate register

`define AUDIO_CODEC_ADR 7'h34 //??? 7'h35

module audio_codec(clock);
  input logic clock;
  
  enum int unsigned {INIT_POWER_MANAGMENT, INIT_PLAYBACK, INIT_AUDIO_PATH, INIT_AUDIO_IF, INIT_SAMPLING, SEND_AUDIO_DATA, IDLE} state, st_next;
  
  logic start_i2c;
  logic i2c_successfull;
  logic i2c_clock;
  
endmodule

module i2c_master_control(start, successfull, address_slave, address_register, data, clock);
  input logic start;
  input logic [6:0] address_slave;
  input logic [6:0] address_register;
  input logic [7:0] data;
  output logic successfull;
  input logic clock;
  
  
  enum int unsigned { WRITE, ACK_1_W, IDLE } state, st_next;
endmodule