function [final_centroids, indeces] = runKMeans(initial_centroids, X,max_iterations)

centroids = initial_centroids;

for i = 1:max_iterations
    logProgress(i, max_iterations);
    indeces = computeNearestCentroid(centroids, X);
    centroids = updateCentroidPosition(centroids, X, indeces);
end

end