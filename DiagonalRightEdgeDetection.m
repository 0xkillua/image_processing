function diagonal_right_edges = DiagonalRightEdgeDetection(img)
   
    if size(img, 3) == 3
        img_gray = rgb2gray(img);
    else
        img_gray = img;
    end

    sobel_diagonal_right = [1 0 -1; 2 0 -2; 1 0 -1];  

    diagonal_right_edges = imfilter(double(img_gray), sobel_diagonal_right, 'replicate');

    diagonal_right_edges = abs(diagonal_right_edges);  
    diagonal_right_edges = mat2gray(diagonal_right_edges);  
end
