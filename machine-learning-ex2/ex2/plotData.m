function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

m=length(X);

%chercher les lignes dans les données où y==1. Retourne le numéro de ligne.
pos=find(y==1); neg=find(y==0);

%Affiche sur le graphe les valeurs de lignes pos et neg de manière distinct
plot(X(pos,1),X(pos,2),'+'), plot(X(neg,1),X(neg,2),'o'),


% =========================================================================



hold off;

end
