function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

%PAs besoin de normalisaiton ? 
%A=X(:,2:3);
%B=featureNormalize(A);
%Xn=[ones(m, 1) B];

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%                You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

hthetaX=sigmoid(X*theta); %100x1

%Fonction cout 
erreur1=-y.*log(hthetaX)-(1-y).*log(1-hthetaX);
J=(1/m) * sum(erreur1);

%Gradient 
erreur2=hthetaX-y; %100x1 -100x1
%Sparer chaque colone (chaque j)
for j=1:length(theta)
    %grad(j,1)=(1/m) * sum(sum(erreur2 * X(j,:))');
    %grad(j,1)=(1/m) * sum(erreur2)*sum(Xn(:,j));
    grad(j,1)=(1/m) * sum(erreur2.*X(:,j));
end

    





% =============================================================

end
