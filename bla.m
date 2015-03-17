function [ out ] = bla( in )

[Z S] = size(in);

out = in;

for z=1:Z
    for s=1:S
        if z>Z/2
        out(z,s) = 1-in(z,s);
        end
    end
end

end

