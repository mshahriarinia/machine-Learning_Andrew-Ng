function JPrime = computeCostDerivative(X, y, theta)
    
    
m = length(y);
sum = [0 ; 0];
Hypothesis = hypothesis(X, theta);
for i = 1 : m
    
    Delta = (Hypothesis(i) - y(i));
    sum(1, 1) = sum(1, 1) + Delta;
    sum(2, 1) = sum(2, 1) + Delta * X(i, 2);
    fprintf('Delta %f \n', Delta);
end
 sum(1, 1) =  sum(1, 1) / m;
 sum(2, 1) =  sum(2, 1) / m;
JPrime = sum; 
end 