    
    im = imread([path '\5_4.jpg']);
    im = im2double(rgb2gray(im));
    im = imresize(im,[50 50]);
    im = reshape(im',2500,1);
    subplot(211);
    imshow(vec2mat(im,50));
    M = mean(mean(im));
    len = length(find(im>M));
    if(len<1000)
        im = imcomplement(im);       
    end
    m = M*(.85);
    ex = 1./(1+(m./im).^8);
    ex = imcomplement(ex);
    subplot(212);
    imshow(vec2mat(ex,50));
    feedforward(ex,weight,bias)
    %train_set(:,i) = reshape(ex',2500,1);