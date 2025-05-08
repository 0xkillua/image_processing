function [binary] = rgbtobinary(rgb ,option ,th  )
    img = rgbtogray(rgb , option );
    binary = graytobinary (img , th);
end