function [NI] = InverseFourierTransform(I)
    fi = fft2(I);
    f1 = fftshift(fi);
    n = abs(f1);
    n = log(1 + n);
    n = mat2gray(n);

    final = fftshift(f1);   
    final = ifft2(final);  
    final = abs(final);    
    final = log(1 + final);
    NI = mat2gray(final);  
end
