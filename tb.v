module tb();

wire [3:0] gray_in;
wire [3:0] binary_out;
wire [3:0] binary_in;
wire [3:0] gray_out;

reg [7:0] teste;

Binary_to_Gray UUT1 (
    .binary_in (binary_in),
    .gray_out  (gray_out)
);

Gray_to_Binary UUT2 (
    .gray_in    (gray_in),
    .binary_out (binary_out)
);

integer file, status;

initial begin
  file = $fopen("teste.txt", "r");
  status = $fscanf(file, "%b" , teste);
  $fclose(file);
end

initial begin
  $dumpfile("saida.vcd");
  $dumpvars(0, tb);
  #1;
  $monitor("binary_in = %b, gray_out = %b, gray_in = %b, binary_out = %b", binary_in, gray_out, gray_in, binary_out);
  #1;
end

assign binary_in = teste[7:4];
assign gray_in = teste[3:0];

endmodule
