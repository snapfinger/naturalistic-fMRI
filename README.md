# SANS22_fMRI_challenge

This is the repository for [SANS2022 naturalistic fMRI challenge](https://compsan.org/sans_data_competition/content/intro.html). We used our our lab's group BrainSync + NASCAR framework to extract shared brain networks among population under naturalistic stimlus paradigm.

### (Group) BrainSync: Temporal synchronization of fMRI among subjects
- BrainSync
    -  find the optimal orthogonal transformation between two subjects
    -  ref: [Joshi, A. A., Chong, M., Li, J., Choi, S., & Leahy, R. M. (2018). Are you thinking what I'm thinking? Synchronization of resting fMRI time-series across subjects. NeuroImage, 172, 740-752.](https://www.sciencedirect.com/science/article/pii/S1053811918300582)
    -  [code](https://github.com/ajoshiusc/bfp/blob/main/src/BrainSync/brainSync.m)
- Group BrainSync: 
    -  find the orthogonal transformations for a group of subjects with a generated group template
    -  ref: [Akrami, H., Joshi, A. A., Li, J., & Leahy, R. M. (2019, March). Group-wise alignment of resting fMRI in space and time. In Medical Imaging 2019: Image Processing (Vol. 10949, pp. 737-744). SPIE.](https://www.spiedigitallibrary.org/conference-proceedings-of-spie/10949/109492W/Group-wise-alignment-of-resting-fMRI-in-space-and-time/10.1117/12.2512564.pdf)
    -  [code](https://neuroimageusc.github.io/GBS) 

### NASCAR
- Brain network decomposition from population fMRI responses
- ref: [Li, Jian, Jessica L. Wisnowski, Anand A. Joshi, and Richard M. Leahy. "Robust brain network identification from multi-subject asynchronous fMRI data." NeuroImage 227 (2021): 117615.](https://www.sciencedirect.com/science/article/pii/S1053811920311009)
- [code](https://silencer1127.github.io/software/NASCAR/nascar_main)

### BrainSuite Functional Pipeline
- workflow for preprocessing functional MRI
- [code](https://github.com/ajoshiusc/bfp)
