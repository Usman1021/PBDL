
function [features,featureMetrics] = subMyExtraction(img)
    I = img;


   % Preprocess the image for gray scale
    [height,width,numChannels] = size(I);
if numChannels > 1
    grayImage = rgb2gray(I);
else
    grayImage = I;
end
    
%Select a point location for feature extraction
    
gridStep = 6;
gridX = 1:gridStep:width;
gridY = 1:gridStep:height;

[x,y] = meshgrid(gridX,gridY);

gridLocations = [x(:) y(:)];

multiscaleGridPoints = [SURFPoints(gridLocations,'Scale',1.6);
      SURFPoints(gridLocations,'Scale',2.5);
      SURFPoints(gridLocations,'Scale',3.0);
      SURFPoints(gridLocations, 'Scale',3.5);
      SURFPoints(gridLocations,'Scale',4.0);
     SURFPoints(gridLocations,'Scale',4.5);
     SURFPoints(gridLocations,'Scale',5.0)];

   [features, ~]  =  extractFeatures(grayImage,multiscaleGridPoints,'Method','SURF');
    featureMetrics = var(features ,[],2); 
end