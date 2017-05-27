This code uses [fastText supervised](https://github.com/facebookresearch/fastText/blob/master/tutorials/supervised-learning.md) learning to predict output labels from input text.

### Approach

This is the baseline code.  I have not changed anything.

#### Preprocessing
I applied lowercasing, so "This is a TEST!" becomes "this is a test!".

#### Parameters
This is the baseline code.  I have not added any hyperparameters in sentiment.sh.

#### Results
Precision and recall were 0.916.

### Data

Before running, you should download the data to the `data/amazon_reviews` dir.

You can download the datasets from [kaggle.com/bittlingmayer/amazonreviews](https://www.kaggle.com/bittlingmayer/amazonreviews).

So the directory structure should look like this:
```
├── README.md
├── preproc.sh  
├── sentiment.sh  
└── data/ 
    └── amazon_reviews/ 
        ├── train.ft.txt  
        └── test.ft.txt  
```
The code assumes that the data files are in the fastText format.

### To Run

To preprocess:
```
preproc.sh train.ft.txt > train.ft.txt
preproc.sh test.ft.txt > test.ft.txt
```

To evaluation predictions:
```
sentiment.sh
```

