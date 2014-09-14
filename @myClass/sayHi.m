function  sayHi(varargin)
%SAYHI Summary of this function goes here
%   Detailed explanation goes here
if nargin == 0
    sub = 11;
else
    sub = varargin{1};
end
str=strcat('[Year-Month-Day-Hour-Minute-Second] ',datestr(now,'yyyy-mm-dd-HH-MM-SS'));
fprintf('Hi, %0.3d %s \n',sub,str)
end

