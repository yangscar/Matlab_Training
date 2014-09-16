function out = f(n)
if n < 2
    out = 1;
    return;
end
out = f(n-1)+f(n-2);
end

