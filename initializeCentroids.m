function [centroids] = initializeCentroids(X, K)
    shuffledX = X(randperm(size(X,1)),:,:);
    centroids = shuffledX(1:K, :, :);
end