## [Patch-Based Discriminative Learning for Remote Sensing Scene Classification](https://www.mdpi.com/2072-4292/14/23/5913)
#### Authors: Usman Muhammad, Md Ziaul Hoque, Wang Weiqiang and Mourad Oussalah

#### Journal: [Remote Sensing](https://www.mdpi.com/journal/remotesensing)
##

### Abstract
The research focus in remote sensing scene image classification has been recently shifting towards deep learning (DL) techniques. However, even the state-of-the-art deep-learning-based models have shown limited performance due to the inter-class similarity and the intra-class diversity among scene categories. To alleviate this issue, we propose to explore the spatial dependencies between different image regions and introduce patch-based discriminative learning (PBDL) for remote sensing scene classification. In particular, the proposed method employs multi-level feature learning based on small, medium, and large neighborhood regions to enhance the discriminative power of image representation. To achieve this, image patches are selected through a fixed-size sliding window, and sampling redundancy, a novel concept, is developed to minimize the occurrence of redundant features while sustaining the relevant features for the model. Apart from multi-level learning, we explicitly impose image pyramids to magnify the visual information of the scene images and optimize their positions and scale parameters locally. Motivated by this, a local descriptor is exploited to extract multi-level and multi-scale features that we represent in terms of a codeword histogram by performing k-means clustering. Finally, a simple fusion strategy is proposed to balance the contribution of individual features where the fused features are incorporated into a bidirectional long short-term memory (BiLSTM) network. Experimental results on the NWPU-RESISC45, AID, UC-Merced, and WHU-RS datasets demonstrate that the proposed approach yields significantly higher classification performance in comparison with existing state-of-the-art deep-learning-based methods.

#### The source codes are available to the research community. If you are using the code, please cite the following paper:                              
Muhammad, Usman and Hoque, Md Ziaul and Wang, Weiqiang and Oussalah, Mourad (2022): Patch-Based Discriminative Learning for Remote Sensing Scene Classification.

### BibTeX
@article{muhammad2022patch,
  title={Patch-Based Discriminative Learning for Remote Sensing Scene Classification},
  author={Muhammad, Usman and Hoque, Md Ziaul and Wang, Weiqiang and Oussalah, Mourad},
  journal={Remote Sensing},
  volume={14},
  number={23},
  pages={5913},
  year={2022},
  publisher={MDPI}
}

### Links
• Main link: https://www.mdpi.com/2072-4292/14/23/5913

• Preprint: https://www.techrxiv.org/articles/preprint/16441593


