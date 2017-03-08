function [rj1_o,rj2_o] = positions(l1,l2,th1,th2)
%POSITIONS
%    [RJ1_O,RJ2_O] = POSITIONS(L1,L2,TH1,TH2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    08-Mar-2017 15:56:11

t2 = sin(th1);
t3 = l1.*t2;
t4 = th1+th2;
t5 = cos(th1);
rj1_o = [t3;-l1.*t5;0.0];
if nargout > 1
    rj2_o = [t3+l2.*sin(t4);-l1.*t5-l2.*cos(t4);0.0];
end
