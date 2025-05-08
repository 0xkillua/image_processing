function noisyImage = addUniformNoise(image, noiseRange)
    
    image = im2double(image);
    
    noise = (noiseRange(2) - noiseRange(1)) * rand(size(image)) + noiseRange(1);
    
    noisyImage = image + noise;
    
    noisyImage = max(min(noisyImage, 1), 0);
    
    if isa(image, 'uint8')
        noisyImage = im2uint8(noisyImage);
    end
end
