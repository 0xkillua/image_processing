function [NI] = FourierTransform(I)
    if nargin < 1
        error('Input image I is required.');
    end
    fi = fft2(I);
    f1 = fftshift(fi);
    n = abs(f1);
    n = log(1 + n);
    NI = mat2gray(n);
end
