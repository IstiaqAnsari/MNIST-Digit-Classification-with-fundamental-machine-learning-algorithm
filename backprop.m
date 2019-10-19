function [nabla_b,nabla_w]=backprop(x,y,w,b)
    nabla_b = cell(size(b));
    nabla_w = cell(size(w));
    for i=1:size(b,2)
        nabla_b{i} = zeros(size(b{i}));
        nabla_w{i} = zeros(size(w{i}));
    end
    activation = x;
    activations = cell(1,size(w,2)+1);
    activations{1} = x;
    zs = cell(1,size(w,2));
    for i=1:size(w,2)
       z = (w{i}*activation)+b{i};
       zs{i} = z;
       activation = sigmoid(z);
       activations{i+1} = activation;
    end
    delta = cost_derivative(activations{end},y);
    
    nabla_b{end} = delta;
    nabla_w{end} = delta*activations{end-1}';
    for i=1:size(w,2)-1
       z = zs{end-i};
       sp = sigmoid_prime(z);
       delta = (w{end-i+1}'*delta).*sp;
       nabla_b{end-i} = delta;
       nabla_w{end-i} = delta * activations{end-i-1}';
    end
end









