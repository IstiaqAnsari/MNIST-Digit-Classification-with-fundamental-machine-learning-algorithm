function a = feedforward(a,weight,bias)
    for i=1:length(weight)
        a = sigmoid(weight{i}*a+bias{i});
    end
end
