function d = detect(a,weight,bias)
    c = feedforward(a,weight,bias);
    d = find(c==max(c))-1;
    imshow(vec2mat(a,50));
end