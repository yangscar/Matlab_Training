function varargout = myOperator2(operator, varargin)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if nargin <1,varargout{1} ='error';varargout{2}=[];return;end
len = nargin-1;
res = varargin{1};
for i = 2:len
    res=operator(res,varargin{i});
end
varargout{2}=res;
varargout{1} ='ok';
end
