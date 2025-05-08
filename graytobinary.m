function [binary] = graytobinary(gray, th)
    [h, w] = size(gray);
    binary = zeros(h, w);
    
    for i = 1:h  
        for j = 1:w
            if gray(i, j) < th 
                binary(i, j) = 0;
            else
                binary(i, j) = 1;
            end
        end
    end
    binary = logical(binary);

end
