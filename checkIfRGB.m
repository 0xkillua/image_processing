function isRGB = checkIfRGB(image)
    if ndims(image) == 3 && size(image, 3) == 3
        isRGB = true;  
        disp('The image is RGB.');
    else
        isRGB = false; 
        disp('The image is not RGB (it is likely grayscale).');
    end
end