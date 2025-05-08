function edgeImage = sobelEdgeDetection(image)
    if size(image, 3) == 3
        image = rgb2gray(image);
    end
    
    image = im2double(image);
    
    sobelX = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
    sobelY = [-1, -2, -1; 0, 0, 0; 1, 2, 1];
    
    gradX = conv2(image, sobelX, 'same');
    gradY = conv2(image, sobelY, 'same');
    
    edgeImage = sqrt(gradX.^2 + gradY.^2);
    
    edgeImage = im2uint8(edgeImage);
end
