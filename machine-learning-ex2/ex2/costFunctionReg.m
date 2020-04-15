function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hthetaX=sigmoid(X*theta); %100x1

%Fonction cout 
erreur1=-y'*log(hthetaX)-(1-y')*log(1-hthetaX);
n=length(theta);
J=(1/m) * sum(erreur1) + lambda/(2*m) * sum(theta(2:n,:).^2);

%Gradient 
erreur2=hthetaX-y; %100x1 -100x1
%Sparer chaque colone (chaque j)

%theta 
%Theta pour j=0
grad(1,1)=(1/m) * sum(erreur2.*X(:,1));
%Theta pour j>=0
for j=2:length(theta)
    %grad(j,1)=(1/m) * sum(sum(erreur2 * X(j,:))');
    %grad(j,1)=(1/m) * sum(erreur2)*sum(Xn(:,j));
    grad(j,1)=(1/m) * sum(erreur2.*X(:,j)) + (lambda/m)*theta(j);
end




% =============================================================

end
