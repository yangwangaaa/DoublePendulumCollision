function [col1a,col1b,col2a,col2b] = collisionCheck(l1,l2,th1,th2,x,y)
%COLLISIONCHECK
%    [COL1A,COL1B,COL2A,COL2B] = COLLISIONCHECK(L1,L2,TH1,TH2,X,Y)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    08-Mar-2017 15:57:11

t2 = cos(th1);
t3 = sin(th1);
col1a = -t2.*x-t3.*y;
if nargout > 1
    t4 = abs(x);
    t5 = abs(y);
    col1b = (sqrt(t4.^2+t5.^2) <= l1) && (0.0 < t3.*x-t2.*y);
end
if nargout > 2
    t6 = th1+th2;
    t7 = l1.*t2;
    t8 = t7+y;
    t9 = abs(t8);
    t14 = l1.*t3;
    t10 = -t14+x;
    t11 = abs(t10);
    t12 = cos(t6);
    t13 = sin(t6);
    col2a = -t8.*t13-t10.*t12;
end
if nargout > 3
    col2b = (sqrt(t9.^2+t11.^2) <= l2) && (0.0 < -t8.*t12+t10.*t13);
end
