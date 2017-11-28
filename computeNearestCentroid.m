function [indeces] = computeNearestCentroid(centroids, X);

indeces = [];

for i = 1:size(X, 1)
    distances = [];
    for k = 1:size(centroids, 1)
        distances(k) = sqrt(sum(((X(i, :) - centroids(k, :)).^2)))^2;
    end
    [min_value, indeces(i)] = min(distances);
end

end