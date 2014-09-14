function [state,res] = myOperator1(operator, varargin)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if nargin <1,state ='error';res=[];return;end
len = nargin-1;
res = varargin{1};
for i = 2:len
    eval(strcat('res = res',operator,'varargin{i}'));
end
state ='ok';
end

