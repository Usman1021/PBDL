clear all
close all
clc
%% Input for training dataset
tic
imds = imageDatastore('C:\Users\musman18\Desktop\remote sensing letter\whurs\whu',...
    'IncludeSubfolders',true,'LabelSource','foldernames');
% Count each label and number of images from each class
tbl = countEachLabel(imds);
%% Split dataset for training and testing
[trainingSet, testSet] = splitEachLabel(imds, 0.8, 'randomize');  
%% Create bag of word model
% Multiscale features Learning in bag of word model with Patch size 4
 bag1 = bagOfFeatures(trainingSet,...
       'CustomExtractor', @patchsize_4, ...
       'VocabularySize',15000);
% Multiscale features Learning in bag of word model with Patch size 6
 bag2 = bagOfFeatures(trainingSet,...
       'CustomExtractor', @patchsize_6, ...
       'VocabularySize',15000);
% Multiscale features Learning in bag of word model with Patch size 8
 bag3 = bagOfFeatures(trainingSet,...
       'CustomExtractor', @patchsize_8, ...
       'VocabularySize',15000);
% Multiscale features Learning in bag of word model with Patch size 10
 bag4 = bagOfFeatures(trainingSet,...
       'CustomExtractor', @patchsize_10, ...
       'VocabularySize',15000);
%%
% Enocde visual codebooks for trainingset
train_1 = double(encode(bag1, trainingSet));
train_2 = double(encode(bag2, trainingSet));
train_3 = double(encode(bag3, trainingSet));
train_4 = double(encode(bag4, trainingSet));
%% 
% Encode visual codebook for testingset
test_1 = double(encode(bag1, testSet));
test_2 = double(encode(bag2, testSet));
test_3 = double(encode(bag3, testSet));
test_4 = double(encode(bag4, testSet));
%%
% Get training labels from the trainingSet
trainingLabels = trainingSet.Labels;
%% Information fusion 
Finaltrain = (train_1+train_2+train_3+train_4);
Finaltest = (test_1+test_2+test_3+test_4);
%%
% Train multiclass SVM classifier using a fast linear solver, and set
% 'ObservationsIn' to 'columns' to match the arrangement used for training features.
classifier = fitcecoc (Finaltrain', trainingLabels, ...
    'Learners', 'Linear', 'Coding', 'onevsall', 'ObservationsIn', 'columns');
%% SVM based results
% Pass SVM image features to trained classifier
predictedLabels = predict(classifier, Finaltest);
% Get the known labels
testLabels = testSet.Labels;
% Tabulate the results using a confusion matrix.
confMat = confusionmat(testLabels, predictedLabels);
% Convert confusion matrix into percentage form
confMat = bsxfun(@rdivide,confMat,sum(confMat,2));
% Display the mean accuracy
mean(diag(confMat*100))
%% Training for BiLSTM
% converting format for BilSTM
rng(1);
train = {};
train{end+1} = Finaltrain';
% converting label format
trainlabel = {};
trainlabel{end+1} = trainingLabels';
% following the size of codebook
numFeatures = 15000;
 numHiddenUnits = 100;
numClasses = 21;
% construction of BiLSTM
layers = [ ...
    sequenceInputLayer(numFeatures)
    bilstmLayer(numHiddenUnits,'OutputMode','sequence','RecurrentWeightsInitializer', 'glorot')
    fullyConnectedLayer(numClasses,'WeightsInitializer','glorot')
    softmaxLayer
    classificationLayer];
% setting learning rate
maxEpochs = 80;
miniBatchSize = 32;
options = trainingOptions('adam', ...
    'ExecutionEnvironment','gpu', ...
    'GradientThreshold',1, ...
    'MaxEpochs',maxEpochs, ...
    'MiniBatchSize',miniBatchSize, ...
    'SequenceLength','longest', ...
    'Shuffle','never', ...
    'Verbose',0, ...
    'Plots','training-progress');
lstm = trainNetwork(train,trainlabel,layers,options);
% Pass CNN image features to trained classifier
[predictedLabels2, scores]= classify(lstm, Finaltest');
% Tabulate the results using a confusion matrix.
confMat = confusionmat(testLabels, predictedLabels2);
confMat = bsxfun(@rdivide,confMat,sum(confMat,2));
mean(diag(confMat*100))
toc