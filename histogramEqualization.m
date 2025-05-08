function [equalizedImage] = histogramEqualization(grayImage)
    if size(grayImage, 3) > 1
        error('Input must be a grayscale image.');
    end

    [counts, grayLevels] = imhist(grayImage);

    cdf = cumsum(counts) / numel(grayImage);

    cdfNormalized = uint8(255 * cdf);

    equalizedImage = cdfNormalized(double(grayImage) + 1);

    equalizedImage = uint8(equalizedImage);
end
