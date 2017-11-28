function [centroids] = updateCentroidPosition(centroids, X, indeces)

current_centroids = [];
for k = 1:size(centroids, 1)
    indeces_logical = (indeces == k)';
    current_centroids(k,:) = sum(X .* indeces_logical,1)/sum(indeces_logical);
end

centroids = current_centroids;
end