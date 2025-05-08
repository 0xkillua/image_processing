function img_convolved = Convolution(img, kernel)
   
    if size(img, 3) == 3
        img = rgb2gray(img);  
    end
    
    img_double = double(img);

    [k_rows, k_cols] = size(kernel);

    pad_rows = floor(k_rows / 2);
    pad_cols = floor(k_cols / 2);

    img_padded = padarray(img_double, [pad_rows, pad_cols], 'both');

    [img_rows, img_cols] = size(img_double);
    img_convolved = zeros(img_rows, img_cols);

    for i = 1:img_rows
        for j = 1:img_cols
            roi = img_padded(i:i+k_rows-1, j:j+k_cols-1);
            
            img_convolved(i, j) = sum(sum(roi .* kernel));
        end
    end
    
    img_convolved = uint8(mat2gray(img_convolved) * 255);
end
