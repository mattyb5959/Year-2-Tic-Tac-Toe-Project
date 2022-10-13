module win_detector(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, win, winner);
input [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
output wire win;
output wire [1:0] winner;
wire w1,w2,w3,w4,w5,w6,w7,w8;
wire [1:0] winner1, winner2, winner3, winner4, winner5, winner6, winner7, winner8;

//win outcomes
win_detect_sub u1(pos1,pos2,pos3,w1,winner1);// (1,2,3);
win_detect_sub u2(pos4,pos5,pos6,w2,winner2);// (4,5,6);
win_detect_sub u3(pos7,pos8,pos9,w3,winner3);// (7,8,9);
win_detect_sub u4(pos1,pos4,pos7,w4,winner4);// (1,4,7);
win_detect_sub u5(pos2,pos5,pos8,w5,winner5);// (2,5,8);
win_detect_sub u6(pos3,pos6,pos9,w6,winner6);// (3,6,9);
win_detect_sub u7(pos1,pos5,pos9,w7,winner7);// (1,5,9);
win_detect_sub u8(pos3,pos5,pos6,w8,winner8);// (3,5,7);

assign winner = (((((((w1 | w2) | w3) | w4) | w5) | w6) | w7) | w8);
assign who = (((((((winner1 | winner2) | winner3) | winner4) | winner5) | winner6) | winner7) | winner8);

endmodule