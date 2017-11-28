%load image from source / initialize variables
X = double(imread('autumn.jpg'));
K = 8;
max_iteration = 10;

%Reshape X to an n x 3 (pixels x rgb values) matrix
size_X = size(X);
X = reshape(X, size_X(1)*size_X(2), 3);

%Initialize Kernels
initial_centroids = initializeCentroids(X, K);

%Run K-Means
[final_centroids, indeces] = runKMeans(initial_centroids, X, max_iteration)