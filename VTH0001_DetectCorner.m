corners = detectHarrisFeatures(img1);
imshow(img1); hold on;
plot(corners.selectStrongest(50));
