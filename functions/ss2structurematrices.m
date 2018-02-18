function [ Sa, Sb, Sc, Sd ] = ss2structurematrices( ss )
%SS2STRUCTUREMATRUCES Converts a ss representation into a system of
%structural matrices.
%
% Syntax:  [ output_args ] = ss2structurematrices( ss )
%
% Inputs:
%    ss - State Space System
%
% Outputs:
%    Sa, Sb, Sc, Sd - Structural matrices

%------------- BEGIN CODE -------------

[n,m]=size(ss.A);
Sa = zeros(n,m);
for i=1:n
    for j=1:m
        if ss.A(i,j) ~= 0
            Sa(i,j) = 1;
        end
    end
end

[n,m]=size(ss.B);
Sb = zeros(n,m);
for i=1:n
    for j=1:m
        if ss.B(i,j) ~= 0
            Sb(i,j) = 1;
        end
    end
end

[n,m]=size(ss.C);
Sc = zeros(n,m);
for i=1:n
    for j=1:m
        if ss.C(i,j) ~= 0
            Sc(i,j) = 1;
        end
    end
end

[n,m]=size(ss.D);
Sd = zeros(n,m);
for i=1:n
    for j=1:m
        if ss.D(i,j) ~= 0
            Sd(i,j) = 1;
        end
    end
end
%------------- END OF CODE --------------

end

