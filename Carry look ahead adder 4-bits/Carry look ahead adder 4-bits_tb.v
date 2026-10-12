module cla_tb;
  reg cin;
  reg [3:0]a;
  reg [3:0]b;
  wire [3:0] sum;
  wire cout;
  
  cla uut(.sum(sum),.cout(cout),.cin(cin),.a(a),.b(b));
  initial begin
  		$dumpfile("cla.vcd");
    	$dumpvars(0, cla_tb);
      
        a = 4'b0000; b = 4'b0000; cin = 1'b0;
        #10;             
        a = 4'b0101; b = 4'b0010; cin = 1'b0; 
        #10;        
        a = 4'b0110; b = 4'b0011; cin = 1'b1; 
        #10;
        a = 4'b1111; b = 4'b1111; cin = 1'b0; 
        #10;
    $finish;
  end
endmodule
