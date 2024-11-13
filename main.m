clear all
close all
clc


C = 3.2e-3; %F;
L = 0.9e-3; %H
Vfc = 350; %V
Vdc = 550; %V
Po = 100e3; %W


R = Vdc^2/Po;
IL = Po/Vfc;
Iref = Vdc/R ; 


alpha = 1 - Vfc/(C*Iref)

A1 = [ 0, -1/L;
      1/C,  -1/(R*C)];

A2 = [0,    0;
      0, -1/(R*C)];

A_alpha = [     0,         (alpha-1)/L;
           (alpha-1)/L,    -1/(R*C)];

B_alpha = [1/L; 
            0];

a = 1- Vfc/Vdc