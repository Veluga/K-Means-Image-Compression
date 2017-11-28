function [final_image_vector] = assignCentroid(indeces, centroids);

final_image_vector = [];

for i = 1:length(indeces)
    val = indeces(i);
    final_image_vector(i,:) = centroids(val,:);
end

end