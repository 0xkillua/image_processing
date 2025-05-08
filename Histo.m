function [Histo_array] = Histo(I)
Histo_array = zeros(256,1);
[h , w]=size(I);
for i=1:h
    for j=1:w
        Histo_array(I(i,j)+1)=Histo_array(I(i,j)+1)+1;
    end
end
end

