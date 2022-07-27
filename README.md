## [Patch-Based Discriminative Learning for Remote Sensing Scene Classification](https://www.techrxiv.org/articles/preprint/A_Discriminative_Neighborhood-Based_Collaborative_Learning_for_Remote_Sensing_Scene_Classification/16441593)
#### Authors: Usman Muhammad, Md. Ziaul Hoque, Wang Weiqiang and Mourad Oussalah

#### Journal: [IEEE Journal of Selected Topics in Applied Earth Observations and Remote Sensing](https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=4609443)
##

### Abstract
The bag-of-words (BoW) model is one of the most popular representation methods for image classification. However, the lack of spatial information, change of illumination, and inter-class similarity among scene categories impair its performance in the remote-sensing domain. To alleviate these issues, this paper proposes to explore the spatial dependencies between different image regions and introduces a patch-based discriminative learning (PBDL) for remote-sensing scene classification. Particularly, our proposed method employs multilevel feature learning based on small, medium, and large neighborhood regions to enhance the discriminative power of image representation. To achieve this, image patches are selected through a fixed-size sliding window where each image is represented by four independent image region sequences. Apart from multilevel learning, we explicitly impose image pyramids to magnify the visual information of the scene images and optimize their position and scale parameters locally. Motivated by this, a local descriptor is exploited to extract multilevel and multiscale features that we represent in terms of \textit{codewords} histogram by performing k-means clustering. Finally, a simple fusion strategy is proposed to balance the contribution of individual features, and the fused features are incorporated into a Bidirectional Long Short-Term Memory (BiLSTM) network for constructing the final representation for classification. Experimental results on NWPU-RESISC45, AID, UC-Merced, and WHU-RS datasets demonstrate that the proposed approach not only surpasses the conventional bag-of-words approaches but also yields significantly higher classification performance than the existing state-of-the-art deep learning methods used nowadays.

#### This research is made available to the research community. If you are using this code please cite the following paper:                              
Muhammad, U., Hoque, M.Z., Wang, W., Oussalah, M., 2022. A Discriminative Neighborhood-Based Collaborative Learning for Remote Sensing Scene Classification.

### BibTeX
@article{muhammad2021discriminative,
  title={A Discriminative Neighborhood-Based Collaborative Learning for Remote Sensing Scene Classification},
  author={Muhammad, Usman and Hoque, Md Ziaul and Wang, Weiqiang and Oussalah, Mourad},
  year={2021},
  publisher={TechRxiv}
}

### Links
Preprint: https://doi.org/10.36227/techrxiv.16441593.v1
