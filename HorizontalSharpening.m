function img_sharpened = HorizontalSharpening(img, filter_size, alpha)
   
    if size(img, 3) == 3
        img = rgb2gray(img);  
    end

    img_double = double(img);

    horizontal_filter = fspecial('sobel');  
    
    img_edges = imfilter(img_double, horizontal_filter, 'replicate');
    
    blur_filter = fspecial('average', filter_size);  
    
    img_blurred = imfilter(img_double, blur_filter, 'replicate');
    
    img_sharpened = img_double + alpha * (img_edges - img_blurred);
    
    img_sharpened = uint8(mat2gray(img_sharpened) * 255);  
end
