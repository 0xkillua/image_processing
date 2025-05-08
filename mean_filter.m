function [outimg] = mean_filter(img, filterSize)

    padSize = floor(filterSize / 2);
    paddedImg = padarray(img, [padSize, padSize], Inf);
   
    [rows, cols] = size(img);
    outimg = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            localRegion = paddedImg(i:i+filterSize-1, j:j+filterSize-1);
            outimg(i, j) = mean(localRegion(:));
        end
    end

    outimg = uint8(outimg);
end