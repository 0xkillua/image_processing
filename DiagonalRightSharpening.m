function sharpened = DiagonalRightSharpening(image)
    
    image = double(image);
    
    kernel = [[2, -1, -1];
              [-1, 2, -1];
              [-1, -1, 2]];
    
    if size(image, 3) == 1
        sharpened = conv2(image, kernel, 'same');
    else
        sharpened = zeros(size(image));
        for channel = 1:3
            sharpened(:,:,channel) = conv2(image(:,:,channel), kernel, 'same');
        end
    end
    
    sharpened = sharpened - min(sharpened(:));
    sharpened = (sharpened / max(sharpened(:))) * 255;
    
    sharpened = uint8(sharpened);
end