module binary2bcd (TENS, U, I);


input [3:0]I;
output TENS;
output [3:0]U;

not N1 (i3bar, I[3]);
not N2 (i2bar, I[2]);
not N3 (i1bar, I[1]);
not N4 (i0bar, I[0]);

or G1 (U[0],1'b0,I[0]);

and G2 (i3i2, I[3],I[2]);
and G3 (i3i2i1bar, i3i2, i1bar);
and G4 (i3bari1, i3bar, I[1]);
or G5 (U[1],i3bari1,i3i2i1bar);

and G6 (i3bari2,i3bar,I[2]);
and G7 (i2i1,I[2],I[1]);
or G8 (U[2],i3bari2,i2i1);

and G9 (i3i2bar,I[3],i2bar);
and G10 (U[3],i3i2bar,i1bar);

and G11 (i3i2,I[3],I[2]);
and G12 (i3i1,I[3],I[1]);
or G13 (TENS,i3i2,i3i1);

endmodule
