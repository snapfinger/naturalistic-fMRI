# SANS 2022 Naturalistic fMRI Data Analysis Challenge

This is the repository for [SANS 2022 Naturalistic fMRI Data Analysis Challenge](https://compsan.org/sans_data_competition/content/intro.html). We used [our lab](https://neuroimage.usc.edu/neuro/home)'s **Group BrainSync + NASCAR** framework to temporally synchronize fMRI recordings among subjects and extract shared brain networks without physiologically implausible constraint (e.g. orthogonality by PCA, spatial/temporal independence by ICA) under naturalistic stimulus paradigm. The time-series corresponding to the visual network from our framework was much more highly correlated with HRF convolved brightness ground truth sequence extracted from the stimulus (TV episode) compared to spatial ICA (0.27 vs 0.12).

### (Group) BrainSync: Temporal synchronization of fMRI among subjects
- **BrainSync**
    -  find the optimal orthogonal transformation between two subjects
    -  Joshi, A. A., Chong, M., Li, J., Choi, S., & Leahy, R. M. (2018). Are you thinking what I'm thinking? Synchronization of resting fMRI time-series across subjects. NeuroImage, 172, 740-752. [[paper link](https://www.sciencedirect.com/science/article/pii/S1053811918300582)][[code](https://github.com/ajoshiusc/bfp/blob/main/src/BrainSync/brainSync.m)]
    
- **Group BrainSync**
    -  find the orthogonal transformations for a group of subjects with a generated group template
    -  Akrami, H., Joshi, A. A., Li, J., & Leahy, R. M. (2019, March). Group-wise alignment of resting fMRI in space and time. In Medical Imaging 2019: Image Processing (Vol. 10949, pp. 737-744). SPIE. [[paper link](https://www.spiedigitallibrary.org/conference-proceedings-of-spie/10949/109492W/Group-wise-alignment-of-resting-fMRI-in-space-and-time/10.1117/12.2512564.pdf)][[code](https://neuroimageusc.github.io/GBS)]

### NASCAR
- Brain network decomposition from population fMRI responses
- Li, Jian, Jessica L. Wisnowski, Anand A. Joshi, and Richard M. Leahy. "Robust brain network identification from multi-subject asynchronous fMRI data." NeuroImage 227 (2021): 117615. [[paper link](https://www.sciencedirect.com/science/article/pii/S1053811920311009)][[code](https://silencer1127.github.io/software/NASCAR/nascar_main)]

### BrainSuite fMRI Pipeline
- workflow for preprocessing functional MRI [[docs](http://brainsuite.org/bfp/)][[code](https://github.com/ajoshiusc/bfp)]
