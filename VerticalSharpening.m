function sharpened = VerticalSharpening(image)
    % Function to apply vertical sharpening to an image
    % Input: image - grayscale or RGB image
    % Output: sharpened - vertically sharpened image
    
    % Convert to double for processing
    image = double(image);
    
    % Vertical sharpening kernel
    kernel = [[-1, -1, -1];
              [2, 2, 2];
              [-1, -1, -1]];
    
    % Handle different image types (grayscale vs RGB)
    if size(image, 3) == 1
        % Grayscale image
        sharpened = conv2(image, kernel, 'same');
    else
        % RGB image - process each channel separately
        sharpened = zeros(size(image));
        for channel = 1:3
            sharpened(:,:,channel) = conv2(image(:,:,channel), kernel, 'same');
        end
    end
    
    % Normalize values to [0, 255] range
    sharpened = sharpened - min(sharpened(:));
    sharpened = (sharpened / max(sharpened(:))) * 255;
    
    % Convert back to uint8
    sharpened = uint8(sharpened);
end