function [ sa, sb, sc, sd ] = ss2sysclass( sys )
%SS2SYSCLASS - Converts a state space system (sys) into its general
%system class, needed for structural analysis.
%
% Syntax: ss2sysclass(sys)
%
% Inputs:
%    sys - ss System (SYS)
% Outputs:
%    sysclass - System class S = (SA, SB, SC, SD)
%
% Author: Daniel Milz
% Created: November 2017; 
% Last revision: 21-Nov-2017;

% May be distributed freely for non-commercial use, 
% but please leave the above info unchanged, for
% credit and feedback purposes

%------------- BEGIN CODE --------------
[a,b,c,d] = ssdata(sys);
sa = a; sb = b; sc = c; sd = d;

sa(sa==0) = 0; sa(sa ~= 0) = 1;
sb(sb==0) = 0; sb(sb ~= 0) = 1;
sc(sc==0) = 0; sc(sc ~= 0) = 1;
sd(sd==0) = 0; sd(sd ~= 0) = 1;
%------------- END OF CODE -------------
end

