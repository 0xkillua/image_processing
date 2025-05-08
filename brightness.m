function [output] = brightness(img, option, value)
    img = double(img);
    [h, w] = size(img);
    output = zeros(h, w); 

    for i = 1:h
        for j = 1:w
            if option == 1
                output(i,j) = img(i,j) + value;  % Brighten
            elseif option == 2
                output(i,j) = img(i,j) - value;  % Darken
            elseif option == 3
                output(i,j) = img(i,j) * value;  % Multiply brightness
            elseif option == 4
                if value ~= 0
                    output(i,j) = img(i,j) / value;  % Divide brightness
                else
                    output(i,j) = img(i,j);  % Avoid division by zero
                end
            end
        end
    end

    output(output > 255) = 255;
    output(output < 0) = 0;

    output = uint8(output);
end
