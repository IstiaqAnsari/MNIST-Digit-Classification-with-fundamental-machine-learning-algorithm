function tot = evaluate(data,res,weight,bias)
    len = size(data,2);
    tot = 0;
    res = devecto(res);
    for i=1:len
        a = feedforward(data(:,i),weight,bias);
        if(res(i) == find(a==max(a))-1)
            tot = tot + 1;
        end
    end
end