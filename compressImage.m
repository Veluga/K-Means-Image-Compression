%load image from source / initialize variables
img_src = 'balloons.jpg';
X = double(imread(img_src));
original = X;
K = 32;
max_iteration = 10;

%Reshape X to an n x 3 (pixels x rgb values) matrix
size_X = size(X);
X = reshape(X, size_X(1)*size_X(2), 3);

%Initialize Centroids
initial_centroids = initializeCentroids(X, K);

%Run K-Means
[final_centroids, indeces] = runKMeans(initial_centroids, X, max_iteration);

%Assign each pixel the respective centroid colour
final_image_vector =  final_centroids(indeces,:);

%Reshape vector into matrix
final_image = reshape(final_image_vector, size_X(1), size_X(2), 3);

%display image
subplot(1,2,1), subimage(uint8(original));
title('Original, uncompressed');
subplot(1,2,2), subimage(uint8(final_image));
title('Compressed');

output = ['compressed_' img_src];
imwrite(uint8(final_image),output);