function z = sigmoid_prime(a)
    z = sigmoid(a).*(1-sigmoid(a));
end