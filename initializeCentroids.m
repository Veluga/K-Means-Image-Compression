function [centroids] = initializeCentroids(X, K)
    shuffled_X = X(randperm(size(X,1)),:);
    centroids = shuffled_X(1:K, :);
end