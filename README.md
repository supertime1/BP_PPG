# BP_PPG
This project is to develop a PPG-based blood pressure deep learning algorithm based on MIMIC-III WFDB
<br />
<br />
The following workflow is show which corresponding notebook to use in each data pipeline step. <br />
<br />
<br />
![Notebook](https://github.com/supertime1/BP_PPG/blob/master/Images/Workflow%20Notebook.jpg?raw=true)
<br />
<br />
More specifically:
1. Download Data: use [**DataMiner.sh**](https://github.com/supertime1/BP_PPG/blob/master/Data%20Processing/DataMiner.sh) to download the original [MIMIC-III WFDB matched subset](https://archive.physionet.org/physiobank/database/mimic3wdb/matched/). You will need to download 2.4TB waveform data including ECG, PPG, ABP and many more. If you are interested in patients' information, you will also need to download [MIMIC-III database](https://archive.physionet.org/physiobank/database/mimic3cdb/)

2. Clean Data: once data is downloaded, use [**BP_Data_Clean.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Data%20Processing/BP_Data_Clean.ipynb) to: 
   - extract the ABP and PPG data;
   - clean and process data
   - generate BP ground truth (systolic and diastolic blood pressure values)
   - optional: 
     - generate Heart Rate; 
     - process data with keeping subject ID (helpful to extract patients' biometrics such as age and gender)
  
3. Optional: Use [**Biometric_Info.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Data%20Processing/Biometric_Info.ipynb) to extract patients' biometrics information (e.g. age and gender)

4. Prepare training data: once data is cleaned, use [**Prepare_train_val_test.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Data%20Processing/Prepare_train_val_test.ipynb) to prepare train, validation and test dataset;

5. Modeling: 
   - use [**BP_PPG_Class.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Models/BP_PPG_Class.ipynb) if LSTM without Attention is needed; 
   - use [**Attention.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Models/Attention_model.ipynb) to experiment with Attention model

<br />
<br />
 ![Notebook](https://github.com/supertime1/BP_PPG/blob/master/Images/Workflow%20Notebook.jpg?raw=true)
<br />
<br />

6. Use [**Model_Analysis_Vis.ipynb**](https://github.com/supertime1/BP_PPG/blob/master/Visualization/Model_Analysis_Vis.ipynb) to perform model evaluation and visualization
