module fsm_game_controller(clk,rst,play, comp, illegal_move, no_space, win, computer_play, player_play);
input clk, rst, play, comp, illegal_move, no_space, win;
output computer_play, player_play;
reg computer_play, player_play;

//fsm states
parameter IDLE=2'b00;
parameter PLAYER=2'b01;
parameter COMPUTER=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;

// current state registers 
always @(posedge clk or posedge rst) 
begin 
 if(rst)
  current_state <= IDLE;
 else 
  current_state <= next_state;
end 

//game state
always @(*)
 begin
 case(current_state)

//idle state
 IDLE: begin
 if(rst==1'b0 && play == 1'b1)
	next_state <= PLAYER; // player to play 
  else 
   next_state <= IDLE;
  player_play <= 1'b0;
  computer_play <= 1'b0;
 end 
 
//player state

PLAYER:begin 
  player_play <= 1'b1;
  computer_play <= 1'b0;
  if(illegal_move==1'b0)
   next_state <= COMPUTER; // computer to play 
  else 
   next_state <= IDLE;
 end 
 
//computer state

COMPUTER:begin 
  player_play <= 1'b0;
  if(comp==1'b0) begin 
   next_state <= COMPUTER;
   computer_play <= 1'b0;
  end
  else if(win==1'b0 && no_space == 1'b0)
  begin 
   next_state <= IDLE;
   computer_play <= 1'b1;// computer to play when PC=1
  end 
  else if(no_space == 1 || win ==1'b1)

begin 
   next_state <= GAME_DONE; // game done 
   computer_play <= 1'b1;// computer to play when PC=1
  end  
 
end 

// game done

 GAME_DONE:begin 
  player_play <= 1'b0;
  computer_play <= 1'b0; 
  if(rst==1'b1) 
   next_state <= IDLE;// reset the game to IDLE 
  else 
   next_state <= GAME_DONE;  
 end 
 default: next_state <= IDLE; 
 endcase
 end
endmodule 
 