syms d1;
syms d2;
syms d3;
syms d4;
syms d5;
syms d6;
syms d7;
syms dee;
syms theta1;
syms theta2;
syms theta3;
syms theta4;
syms theta5;
syms theta6;
syms theta7;
syms alpha1;
syms alpha2;
syms alpha3;
syms alpha4;
syms alpha5;
syms alpha6;
syms alpha7;

A1 = [cosd(theta1) -sind(theta1)*cosd(alpha1) sind(theta1)*sind(alpha1) 0;
     sind(theta1) cosd(theta1)*cosd(alpha1) -cosd(theta1)*sind(alpha1) 0; 
     0 sind(alpha1) cosd(alpha1) d1;
     0 0 0 1];
A2 = [cosd(theta2) -sind(theta2)*cosd(alpha2) sind(theta2)*sind(alpha2) 0;
     sind(theta2) cosd(theta2)*cosd(alpha2) -cosd(theta2)*sind(alpha2) 0; 
     0 sind(alpha2) cosd(alpha2) d2;
     0 0 0 1];
A3 = [cosd(theta3) -sind(theta3)*cosd(alpha3) sind(theta3)*sind(alpha3) 0;
     sind(theta3) cosd(theta3)*cosd(alpha3) -cosd(theta3)*sind(alpha3) 0; 
     0 sind(alpha3) cosd(alpha3) 0;
     0 0 0 1];
A4 = [cosd(theta4) -sind(theta4)*cosd(alpha4) sind(theta4)*sind(alpha4) 0;
     sind(theta4) cosd(theta4)*cosd(alpha4) -cosd(theta4)*sind(alpha4) 0; 
     0 sind(alpha4) cosd(alpha4) d3+d4;
     0 0 0 1];
A5 = [cosd(theta5) -sind(theta5)*cosd(alpha5) sind(theta5)*sind(alpha5) 0;
     sind(theta5) cosd(theta5)*cosd(alpha5) -cosd(theta5)*sind(alpha5) 0; 
     0 sind(alpha5) cosd(alpha5) 0;
     0 0 0 1];
A6 = [cosd(theta6) -sind(theta6)*cosd(alpha6) sind(theta6)*sind(90) 0;
     sind(theta6) cosd(theta6)*cosd(alpha6) -cosd(theta6)*sind(alpha6) 0; 
     0 sind(alpha6) cosd(alpha6) d5+d6;
     0 0 0 1];
A7 = [cosd(theta7) -sind(theta7)*cosd(alpha7) sind(theta7)*sind(alpha7) 0;
     sind(theta7) cosd(theta7)*cosd(alpha7) -cosd(theta7)*sind(alpha7) 0; 
     0 sind(alpha7) cosd(alpha7) d7;
     0 0 0 1];
     
H1 = A1;
H2 = mtimes(A1,A2);
H3 = mtimes(A1,mtimes(A2,A3));
H4 = mtimes(A1,mtimes(A2,mtimes(A3,A4)));
H5 = mtimes(A1,mtimes(A2,mtimes(A3,mtimes(A4,A5))));
H6 = mtimes(A1,mtimes(A2,mtimes(A3,mtimes(A4,mtimes(A5,A6)))));
H7 = mtimes(A1,mtimes(A2,mtimes(A3,mtimes(A4,mtimes(A5,mtimes(A6,A7))))));
% 
% Dend=transpose([H7(1,4) H7(2,4) H7(3,4)]);
% d1 = 0.1575;
% d2 = 0.2025;
% d3 = 0.2045;
% d4 = 0.2155;
% d5 = 0.1845;
% d6 = 0.2155; 
% d7 = 0.0810;
% theta1 = 70;
% theta2 = 90;
% theta3 = 90;
% theta4 = 0;
% theta5 = 90;
% theta6 = 0;
% theta7 = 90;
% alpha1 = 0;
% alpha2 = -90;
% alpha3 = -90;
% alpha4 = -90;
% alpha5 = 90;
% alpha6 = 90;
% alpha7 = -90;
% Dend_actual = subs(Dend);
% 
% disp(Dend_actual);