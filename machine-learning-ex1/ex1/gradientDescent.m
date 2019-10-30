function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


%prediction= X*theta;
%val= prediction -y;
%val2= X'*val;
%tot_val= sum(val);
%tot_val1= sum(val2)
%theta(1)= theta(1)- ((alpha/m)*tot_val);
%

partial1=(1/m)*(theta(1)+theta(2)*X(:,2)-y)'*X(:,1)
partial2=(1/m)*(theta(1)+theta(2)*X(:,2)-y)'*X(:,2)
partial=[partial1; partial2]
theta=theta-alpha*partial


    % ============================================================

    % Save the cost J in every iteration    
J_history(iter) = computeCost(X, y, theta);

end

end