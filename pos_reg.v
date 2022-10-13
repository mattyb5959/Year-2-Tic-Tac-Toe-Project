module position_reg(clk, rst, illegal_move, PC_en, PL_en, pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
input clk, rst, illegal_move;
input [8:0] PC_en, PL_en;
output reg [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;

//position1
always@(posedge clk or posedge rst)
begin
 if(rst)
 pos1 <= 2'b00;
 else begin
 if(illegal_move==1'b1)
    pos1 <= pos1;// keep previous position
   else if(PC_en[0]==1'b1)
    pos1 <= 2'b10; // store computer data 
   else if (PL_en[0]==1'b1)
    pos1 <= 2'b01;// store player data 
   else 
    pos1 <= pos1;// keep previous position
  end 
 end 

//postion 2

always@(posedge clk or posedge rst)
begin
 if(rst)
 pos2 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos2 <= pos2;// keep previous position
   else if(PC_en[1]==1'b1)
    pos2 <= 2'b10; // store computer data 
   else if (PL_en[1]==1'b1)
    pos2 <= 2'b01;// store player data 
   else 
    pos2 <= pos2;// keep previous position
  end 
 end 

//position3

always@(posedge clk or posedge rst)
begin
 if(rst)
 pos3 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos3 <= pos3;// keep previous position
   else if(PC_en[2]==1'b1)
    pos3 <= 2'b10; // store computer data 
   else if (PL_en[2]==1'b1)
    pos3 <= 2'b01;// store player data 
   else 
    pos3 <= pos3;// keep previous position
  end 
 end  

//postion 4
always@(posedge clk or posedge rst)
begin
 if(rst)
 pos4 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos4 <= pos4;// keep previous position
   else if(PC_en[3]==1'b1)
    pos4 <= 2'b10; // store computer data 
   else if (PL_en[3]==1'b1)
    pos4 <= 2'b01;// store player data 
   else 
    pos4 <= pos4;// keep previous position
  end 
 end 

//p5
always@(posedge clk or posedge rst)
begin
 if(rst)
 pos5 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos5 <= pos5;// keep previous position
   else if(PC_en[4]==1'b1)
    pos5 <= 2'b10; // store computer data 
   else if (PL_en[4]==1'b1)
    pos5 <= 2'b01;// store player data 
   else 
    pos5 <= pos5;// keep previous position
  end 
 end 

//p6
always@(posedge clk or posedge rst)
begin
 if(rst)
 pos6 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos6 <= pos6;// keep previous position
   else if(PC_en[5]==1'b1)
    pos6 <= 2'b10; // store computer data 
   else if (PL_en[5]==1'b1)
    pos6 <= 2'b01;// store player data 
   else 
    pos6 <= pos6;// keep previous position
  end 
 end 


//p7
always@(posedge clk or posedge rst)
begin
 if(rst)
   pos7 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos7 <= pos7;// keep previous position
   else if(PC_en[6]==1'b1)
    pos7 <= 2'b10; // store computer data 
   else if (PL_en[6]==1'b1)
    pos7 <= 2'b01;// store player data 
   else 
    pos7 <= pos7;// keep previous position
  end 
 end 
//p8
always@(posedge clk or posedge rst)
begin
 if(rst)
 pos8 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos8 <= pos8;// keep previous position
   else if(PC_en[7]==1'b1)
    pos8 <= 2'b10; // store computer data 
   else if (PL_en[7]==1'b1)
    pos8 <= 2'b01;// store player data 
   else 
    pos8 <= pos8;// keep previous position
  end 
 end 
//p9
always@(posedge clk or posedge rst)
begin
 if(rst)
   pos9 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos9 <= pos9;// keep previous position
   else if(PC_en[8]==1'b1)
    pos9 <= 2'b10; // store computer data 
   else if (PL_en[8]==1'b1)
    pos9 <= 2'b01;// store player data 
   else 
    pos9 <= pos9;// keep previous position
  end 
 end  
endmodule 

