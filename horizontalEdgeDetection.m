function horizontalEdgeImage = horizontalEdgeDetection(image)
    if size(image, 3) == 3
        image = rgb2gray(image);
    end
    
    image = im2double(image);
    
    sobelHorizontal = [-1, -2, -1; 0, 0, 0; 1, 2, 1];
    
    horizontalEdgeImage = conv2(image, sobelHorizontal, 'same');
    
    horizontalEdgeImage = im2uint8(abs(horizontalEdgeImage)); % Take absolute value to ensure positive values
end
