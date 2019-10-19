clear all;
load('MNIST.mat');
%parameters = [2500 50 10];
parameters = [784 30 10];
epochs = 30;
mini_batch_size = 10;
k = mini_batch_size;
eta = 3;
[weight,bias] = createNetwork(parameters);
n = size(train_set,2);
for j=1:epochs
    
    randomize = randperm(size(train_set,2));
    Train_set = train_set(:,randomize);
    Train_res = train_res(:,randomize);
    tic
    for i=1:k:n
        last = min(i+k-1,n);
        mini_batch = Train_set(:,i:last);
        mini_res = Train_res(:,i:last);
        [weight,bias] = update_mini_batch(mini_batch,mini_res,eta,weight,bias,k);
    end
    toc
    tic;
        disp(j);
        disp(size(train_set));
        disp(evaluate(train_set,train_res,weight,bias));
   toc
end
