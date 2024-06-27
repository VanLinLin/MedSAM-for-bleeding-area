# MedSAM for bleeding area

## Introduce

## Environment

Run the prepare.sh to auto-create the virtual environment for classification and instance segmentation:

```bash
bash -i prepare_env.sh
```

> ⚠️ Since the environment of classification and instance segmentation will be installed separate, the `i` in ``bash -i prepare_env.sh`` is necessary.


### 1.1 Classification

Download the testing classification data from [here](https://drive.google.com/drive/folders/1MBT-x7fFPIWLCLSX0INQAqOtNL8J2CAa?usp=sharing).
Unzip the classification_data.zip and classification_weight.zip, moving them into classification folder.

```bash
YOUR_PATH\AUTO-WCEBLEEDGEN-CHALLENGE-VERSION-V2\CLASSIFICATION
├───config
│   ├───efficientnet
│   └───_base_
│       ├───datasets
│       │   └───pipelines
│       ├───models
│       └───schedules
├───data <- *From classificaiton_data.zip*
│   └───WCEBleedGen_v2
│       ├───test1
│       │   ├───bleeding
│       │   └───non-bleeding
│       ├───test2
│       │   ├───bleeding
│       │   └───non-bleeding
│       ├───train
│       │   ├───bleeding
│       │   └───non-bleeding
│       └───val
│           ├───bleeding
│           └───non-bleeding
├───datasets
│   └───pipelines
├───tools
└───weight <- *From classificaiton_weight.zip*
```