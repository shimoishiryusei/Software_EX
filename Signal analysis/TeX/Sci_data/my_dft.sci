function X = my_dft(x)
    N = length(x);
    kn = 0:N-1;
    WN = exp(-%i*2*%pi/N);
    WNkn = WN.^kn;
    X = zeros(1,N);
    for k = 0:N-1
        for n = 0:N-1
            p = modulo(k*n, N);
            X(k+1) = X(k+1) + x(n+1) * WNkn(p+1);
        end
    end
endfunction
