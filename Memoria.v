module Memoria (input clk,
                input wire [4:0] addr,
                output reg [3:0] data);

  //-- Memoria
  reg [7:0] rom [0:31];

  //-- Proceso de acceso a la memoria. 
  //-- Se ha elegido flanco de bajada en este ejemplo, pero
  //-- funciona igual si es de subida
  always @(negedge clk) begin
    data <= rom[addr];
  end

//-- Inicializacion de la memoria. 
//-- Solo se dan valores a las 8 primeras posiciones
//-- El resto permanecera a 0
  initial begin
    rom[0] = 4'h0; 
    rom[1] = 4'h1;
    rom[2] = 4'h2;
    rom[3] = 4'h3;
    rom[4] = 4'h4; 
    rom[5] = 4'h5;
    rom[6] = 4'h6;
    rom[7] = 4'h7;
	 rom[8] = 4'h8;
	 rom[9] = 4'h9;
	 rom[10] = 4'h10;
	 rom[11] = 4'h11;
	 rom[12] = 4'h12;
	 rom[13] = 4'h13;
	 rom[14] = 4'h14;
	 rom[15] = 4'h15;
	 rom[16] = 4'h16;
	 rom[17] = 4'h17;
	 rom[18] = 4'h18;
	 rom[19] = 4'h19;
	 rom[20] = 4'h20;
	 rom[21] = 4'h21;
	 rom[22] = 4'h22;
	 rom[23] = 4'h23;
	 rom[24] = 4'h24;
	 rom[25] = 4'h25;
	 rom[26] = 4'h26;
	 rom[27] = 4'h27;
	 rom[28] = 4'h28;
	 rom[29] = 4'h29;
	 rom[30] = 4'h30;
	 rom[31] = 4'h31;
	 
   end
endmodule 