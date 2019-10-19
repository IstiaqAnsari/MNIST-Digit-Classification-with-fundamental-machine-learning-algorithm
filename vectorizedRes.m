function y = vectorizedRes(x)
    y = zeros(10,length(x));
    for i=1:length(x)
        y(x(i)+1,i) = 1;
    end
end