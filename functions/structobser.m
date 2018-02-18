function [ bool, srnk ] = structobser( sys )
%STRUCTOBSER - Determines, whether the system is structural observable.
%
% Syntax: structobser(sys)
%
% Inputs:
%    a,b,c,d - System (SYS)
% Outputs:
%    bool - yes/no
%    srnk - structural rank
%
% TODO: Check if S is output conencted
%
%
% Author: Daniel Milz
% Created: November 2017; 
% Last revision: 21-Nov-2017;

% May be distributed freely for non-commercial use, 
% but please leave the above info unchanged, for
% credit and feedback purposes

%------------- BEGIN CODE --------------
%--------- Determines Syntax -----------
if nargin ~= 1
    error('The number of input arguments does not fit!');
end
%-------------- Main Code ---------------
[a,~,c,~] = ssdata(sys);
n = size(a,1); % number of states
srnk = sprank([a;c]);
bool = (srnk == n);
%------------- END OF CODE --------------
end

