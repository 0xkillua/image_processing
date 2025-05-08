function img_filtered = ButterworthHighPassFilter(img, cutoff, order)
    
    if size(img, 3) == 3
        img = rgb2gray(img);  
    end

    img_double = double(img);

    F = fft2(img_double);
    
    F_shifted = fftshift(F);
    
    [M, N] = size(img);
    
    [U, V] = meshgrid(1:N, 1:M);
    
    U = U - N/2;
    V = V - M/2;
    
    D = sqrt(U.^2 + V.^2);
    
    H = 1 ./ (1 + (cutoff ./ D).^ (2 * order));  
    
    H(D == 0) = 0;

    F_filtered = F_shifted .* H;
    
    F_back = ifftshift(F_filtered);
    
    img_filtered = real(ifft2(F_back));
    
    img_filtered = mat2gray(img_filtered);
end
