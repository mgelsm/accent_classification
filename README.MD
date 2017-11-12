# English Accents classification
## Introduction
This dataset is composed of 15 speakers, 20 audio files per speaker. Those speakers were randomly selected from the **[VCTK Corpus](http://homepages.inf.ed.ac.uk/jyamagis/page3/page58/page58.html)**. Because of the size of the Corpus, The random selection was made on another computer and is hence not visible in this jupyter notebook. The file *random_files_selector.py* holds the code doing the selection. The speech data was recorded using an identical recording setup: an omni-directional head-mounted microphone (DPA 4035), 96kHz sampling frequency at 24 bits and in a hemi-anechoic chamber. All recordings were converted into 16 bits, were downsampled to 48 kHz based on STPK, and were manually end-pointed. 

**The goal of this notebook is to classify accents using mfcc features.** In order to do so, we will construct a graph of similarity and try to find clusters. We will use Hidden Markov Models as our temporal pattern classifier which is famous in speech recognition. Then we will try traditional classifiers, a simple neural network and a convolutional neural network. As we will attempt to classify 15 accents, the baseline accuracy will be 1/15 = 6.6%.


# Structure of the notebook :
## 0. Getting a taset of the accents
## 1. Load files and preprocess data
## 2. Hidden Markov Model classification
## 3. Reducing dimensionallity of the data into a statistical subspace
## 4. Try basic PCA separation
## 5. Spectral graph clustering
- 5.1 Compute the distance matrix between all spoken sentences
- 5.2 Gaussian kernel and sparsification of the similarity matrix
- 5.3 Compute Laplacian
- 5.4 Get eigenvectors of the laplacian
- 5.5 Cluster the accents 

## 6. Traditional classifiers
- 6.1 Shuffle the data and split it into a training and a testing set
- 6.2 Classify with a 5fold cross-validation

## 7. Classification using Neural Networks
- 7.1 Simple multi layer perceptron
- 7.2 Classification with convolutional neural networks

## Conclusion
- What could be done to increase the accuracy
- References
