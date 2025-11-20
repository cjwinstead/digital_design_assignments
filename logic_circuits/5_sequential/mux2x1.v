`timescale 1 ns/1 ns

module mux2x1(I1, I0, S0, D);
  
  input I1, I0, S0;
  output D;
    
   wire  N1, N2, N3;

   not not1(N1, S0);
   and and1(N2, I0, N1);
   and and2(N3, I1, S0);
   or or1(D, N2, N3);   
  
endmodule


