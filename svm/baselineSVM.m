load project1data;
load project1data_labels;

X = double(X);

% TODO
% SVM with Gaussian kernel of radius 3×105 and a hinge weight of C=10, 
% using 1-vs-rest and voting.
Y1 = Y;
Y1(Y1~=1) = 0;
model1 = fitcsvm(X,Y1,'KernelFunction', 'gaussian','KernelScale','auto');

Y2 = Y;
Y2(Y2~=2) = 0;
model2 = fitcsvm(X,Y2,'KernelFunction', 'gaussian','KernelScale','auto');

Y3 = Y;
Y3(Y3~=3) = 0;
model3 = fitcsvm(X,Y3,'KernelFunction', 'gaussian','KernelScale','auto');

Y4 = Y;
Y4(Y4~=4) = 0;
model4 = fitcsvm(X,Y4,'KernelFunction', 'gaussian','KernelScale','auto');

Y5 = Y;
Y5(Y5~=5) = 0;
model5 = fitcsvm(X,Y5,'KernelFunction', 'gaussian','KernelScale','auto');

save('baselinesvms.mat','Y1','model1','Y2','model2','Y3','model3',...
    'Y4','model4','Y5','model5');