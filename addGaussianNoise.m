function noisyImage = addGaussianNoise(image, mean, variance)
    image = im2double(image);

    noise = mean + sqrt(variance) * randn(size(image));

    noisyImage = image + noise;

    noisyImage = max(min(noisyImage, 1), 0);

    if isa(image, 'uint8')
        noisyImage = im2uint8(noisyImage);
    end
end
