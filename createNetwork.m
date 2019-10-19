function [weight,bias] = createNetwork(parameters)
    len = length(parameters)-1;
    bias = cell(1,len);
    weight = cell(1,len);
    for i=1:len
        bias{i} = randn(parameters(i+1),1);
    end
    for i=1:len
        weight{i} = randn(parameters(i+1),parameters(i));
    end
end