`timescale 1 ns / 10 ps
module multiplicador (input wire [2:0] Mcando, Mcador, input wire clk, start, output wire [5:0] producto, output wire fin);
  //Cables de interconexión
  wire cargaA, cargaQ, cargaM, suma, desplazaAQ;
  wire [1:0] q;

  //Camino de datos
  caminosdatos camino(Mcador, Mcando, ~clk, start, cargaA, cargaQ, cargaM, suma, desplazaAQ, q, producto);
  
  //Unidad de Control
  uc unidad(clk, start, q, suma, desplazaAQ, cargaA, cargaQ, cargaM, fin);
endmodule