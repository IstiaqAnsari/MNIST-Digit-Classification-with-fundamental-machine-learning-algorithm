DowndataRot = zeros(2500,1880);
DownResRot = zeros(10,1880);
id = 1;
for i=1:470
    im = ddata(:,i);
    im = vec2mat(im,50);
    im = imrotate(im,15);
    im = imresize(im,[50 50]);
    DowndataRot(:,id) = reshape(im',2500,1);
    DownResRot(:,id) = res(:,i);
    id = id+1;
    
    im = imrotate(im,-15);
    im = imresize(im,[50 50]);
    DowndataRot(:,id) = reshape(im',2500,1);
    DownResRot(:,id) = res(:,i);
    id = id+1;
    
    im = imrotate(im,30);
    im = imresize(im,[50 50]);
    DowndataRot(:,id) = reshape(im',2500,1);
    DownResRot(:,id) = res(:,i);
    id = id+1;
    
    im = imrotate(im,-30);
    im = imresize(im,[50 50]);
    DowndataRot(:,id) = reshape(im',2500,1);
    DownResRot(:,id) = res(:,i);
    id = id+1;
end