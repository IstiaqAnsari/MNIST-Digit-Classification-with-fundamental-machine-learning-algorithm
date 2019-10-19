function [w,b] = update_mini_batch(data,res,eta,w,b,N)
    nabla_b = cell(size(b));
    nabla_w = cell(size(w));
    for i=1:size(b,2)
        nabla_b{i} = zeros(size(b{i}));
        nabla_w{i} = zeros(size(w{i}));
    end
    for i=1:size(data,2)
       [delta_nabla_b,delta_nabla_w] = backprop(data(:,i),res(:,i),w,b);
       for j=1:size(b,2)
          nabla_b{j}=nabla_b{j}+delta_nabla_b{j}; 
          nabla_w{j}=nabla_w{j}+delta_nabla_w{j};
       end
    end
    for i=1:size(b,2)
        w{i} = w{i} - eta/N * nabla_w{i};
        b{i} = b{i} - ((eta/size(data,2))*nabla_b{i});
    end
end
