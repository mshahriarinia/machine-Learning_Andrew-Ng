function JPrime = computeCostDerivativeMulti(X, y, theta)


m = length(y);
n = length(X(1, :)); % # of features
%sum = [0 ; 0];
sum = zeros(n, 1);
Hypothesis = hypothesis(X, theta);
for i = 1 : m
    
    Delta = (Hypothesis(i) - y(i)); % Delta is a number
    %sum(1, 1) = sum(1, 1) + Delta;
    %sum(2, 1) = sum(2, 1) + Delta * X(i, 2);
    sum = sum + Delta * X(i);
    sum(1) = sum(1) - Delta * X(i, 1); % reverse that for the first component of hypothesis (theta0)
    sum(1) = sum(1) + Delta;
    fprintf('Delta %f \n', Delta);
end
sum =  sum / m;
JPrime = sum;
end