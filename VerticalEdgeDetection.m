function vertical_edges = VerticalEdgeDetection(img)
    % VerticalEdgeDetection - Detects vertical edges in an image using the Sobel operator
    %
    % Syntax: vertical_edges = VerticalEdgeDetection(img)
    %
    % Inputs:
    %    img - Input image (can be in RGB or grayscale)
    %
    % Outputs:
    %    vertical_edges - Image showing vertical edges detected

    % Check if the input is RGB, and convert to grayscale if necessary
    if size(img, 3) == 3
        img_gray = rgb2gray(img);
    else
        img_gray = img;
    end

    % Apply Sobel filter for vertical edge detection
    sobel_vertical = fspecial('sobel');  % Sobel kernel
    vertical_edges = imfilter(double(img_gray), sobel_vertical', 'replicate'); % Apply vertical Sobel filter

    % Normalize the output to display the edges properly
    vertical_edges = abs(vertical_edges);  % Get absolute values to enhance edges
    vertical_edges = mat2gray(vertical_edges);  % Normalize the result between 0 and 1
end
