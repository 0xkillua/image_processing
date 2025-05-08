function diagonal_left_edges = DiagonalLeftEdgeDetection(img)
  
    if size(img, 3) == 3
        img_gray = rgb2gray(img);
    else
        img_gray = img;
    end

    sobel_diagonal_left = [-1 0 1; -2 0 2; -1 0 1];  

    diagonal_left_edges = imfilter(double(img_gray), sobel_diagonal_left, 'replicate');

    diagonal_left_edges = abs(diagonal_left_edges);  
    diagonal_left_edges = mat2gray(diagonal_left_edges);  
end
