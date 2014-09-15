function lptwrite(port, value)
% LPTWRITE write byte to port
%
% Description:
%   IOCTL call to porttalk.sys kernel mode driver (required) by Craig
%   Peacock
%
% Usage:
%   lptwrite(port, value)
%
% Arguments:
%   port  - double Port address (e.g., 888 = 0x378 for LPT1 on many
%           machines) 
%   value - double value to write (0-255)
%
% Examples:
%   lptwrite(888, 42);
%
% Author: Andreas Widmann, University of Leipzig, 2006
