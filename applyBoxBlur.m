function blurredImage = applyBoxBlur(image, kernelSize)
    
    image = im2double(image);

    boxFilter = ones(kernelSize) / (kernelSize^2);

    if size(image, 3) == 3
        blurredImage = zeros(size(image));
        for channel = 1:3
            blurredImage(:, :, channel) = conv2(image(:, :, channel), boxFilter, 'same');
        end
    else
        blurredImage = conv2(image, boxFilter, 'same');
    end

    blurredImage = im2uint8(blurredImage);
end
