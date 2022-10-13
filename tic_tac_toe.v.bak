module tic_tac_toe(clk, rst, play, comp, comp_position, play_position, 
	           pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, 
		   winner); //top is the players/computer + clcok rst, middle is the position of the tictactoe end is winner
input clk, rst, play, comp;
input [3:0] comp_position, play_position;
output wire [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
output wire [1:0] winner;

wire[15:0] PC_en, PL_en;
wire illegal_move, win, comp_play, player_play, no_space;

//position register
pos_reg pos_reg_unit(clk, rst, illegal_move, PC_en[8:0], PL_en[8:0], pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);

//winner detector
win_detector win_detect_unit(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, win, winner);

//pos dec player and computer 
pos_decoder pd1(comp_position, comp_play, PC_en);
pos_decoder pd2(play_position, play_play, PL_en);

//checks for illegal moves
illegal_move_detector imd_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, PC_en[8:0], PL_en[8:0], illegal_move);

//nospace or tie game
nospace_detector nospace_detector(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, no_space);

//fsm
fsm_game_controller tic_tac_toe_controller(clk, rst, play, comp, illegal_move, no_space, win, comp_play, play_play);

endmodule


