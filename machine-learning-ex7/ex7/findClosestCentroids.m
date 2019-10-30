function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%



%K=3 number of clusters
%initial_centroids = [3 3; 6 2; 8 5];


%for i= 1:size(X,1)
%  min= 99999;
% idx(i)=0;
% for j= 1:K
%    dist= X(i)-centroids(j)
%   sum1= dist.^2;
%    sum_sq= sum(sum1);
%    if sum_sq<min
%      min= sum_sq;
%      idx(i)= j;
%    end
%  end
  
%end

for xi = 1 : size(X, 1)
    mins = 100000000;
    id = 0;
    for ki = 1 : K
      X1 = X(xi, :);
      c1 = centroids(ki, :);
      mintemp = (X1- c1)* (X1 - c1)';
      if(mintemp < mins)
          mins = mintemp;
          id = ki;
      end
    end
    idx(xi) = id;
end



% =============================================================

end

