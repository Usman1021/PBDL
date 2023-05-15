## [Patch-Based Discriminative Learning for Remote Sensing Scene Classification](https://www.mdpi.com/2072-4292/14/23/5913)
#### Authors: Usman Muhammad, Md Ziaul Hoque, Wang Weiqiang and Mourad Oussalah

#### Journal: [Remote Sensing](https://www.mdpi.com/journal/remotesensing)
##

### Abstract
The research focus in remote sensing image classification has been recently shifting towards deep learning (DL) techniques. However, even the state-of-the-art deep learning based models have shown limited performance due to the inter-class similarity and the intra-class diversity among scene categories. To alleviate this issue, we propose to explore the spatial dependencies between different image regions and introduce patch-based discriminative learning (PBDL) for remote-sensing scene classification.  Particularly, the proposed method employs multi-level feature learning based on small, medium, and large neighborhood regions to enhance the discriminative power of image representation. To achieve this, image patches are selected through a fixed-size sliding window and sampling redundancy, a novel concept, is developed to minimize the redundant features while sustaining the relevant features for the model. Apart from multi-level learning, we explicitly impose image pyramids to magnify the visual information of the scene images and optimize their position and scale parameters locally. Motivated by this, a local descriptor is exploited to extract multi-level and multi-scale features that we represent in terms of codewords histogram by performing k-means clustering. Finally, a simple fusion strategy is proposed to balance the contribution of individual features, and the fused features are incorporated into a Bidirectional Long Short-Term Memory (BiLSTM) network. Experimental results on NWPU-RESISC45, AID, UC-Merced, and WHU-RS datasets demonstrate that the proposed approach yields significantly higher classification performance in comparison with existing state-of-the-art deep learning based methods.


https://www.techrxiv.org/articles/preprint/A_Discriminative_Neighborhood-Based_Collaborative_Learning_for_Remote_Sensing_Scene_Classification/16441593
