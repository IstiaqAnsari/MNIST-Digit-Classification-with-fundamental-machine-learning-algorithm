function d = devecto(x)
    d = zeros(1,size(x,2));
    for i=1:size(d,2)
        d(i) = find(x(:,i)==1)-1;
    end
end