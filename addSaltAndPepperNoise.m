function noisyImage = addSaltAndPepperNoise(image, noiseDensity)
   
    if noiseDensity < 0 || noiseDensity > 1
        error('Noise density must be between 0 and 1.');
    end
    
    noisyImage = imnoise(image, 'salt & pepper', noiseDensity);
end
