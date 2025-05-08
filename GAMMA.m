function [binary] = GAMMA(img, g)
    img = double(img) / 255; 
    [h, w] = size(img);
    binary = zeros(h, w);

    for i = 1:h
        for j = 1:w
            binary(i, j) = (img(i, j)) ^ g; 
        end
    end
end
