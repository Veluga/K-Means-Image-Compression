%load image from source / initialize variables
X = imread('autumn.jpg');
K = 16;
max_iteration = 10;

%Initialize Kernels
initial_centroids = initializeCentroids(X, K);

%Run K-Means
%[final_centroids, indeces] = runKMeans(initial_centroids, X, max_iteration)