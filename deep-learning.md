
# 2. Deep Learning

## Lecture 1
Motivation for deep learning, trade-offs of preprocessing, autoencoders and word embeddings, doc vectors vs word vectors vs char vectors

[Slides](https://docs.google.com/presentation/d/1eV0nCqNphoZJ3v7bulyamGe4CepF6sDN9-xXuBnR6qc/edit?usp=sharing)

## Lecture 2
Generating and augmenting data for speech recognition, translit, and grammar correction

[Slides](https://docs.google.com/presentation/d/1rZYsCpMOop0z5oAvslWSw6l5PYHkjDY4ClD_n2vgaeg/edit?usp=sharing)

## Lab
Adapt Facebook Research's fastText supervised classification code to do sentiment analysis on Amazon review titles and text.

Read [fastText/tutorials/unsupervised-learning.md](https://github.com/facebookresearch/fastText/blob/master/tutorials/unsupervised-learning.md) to get acquainted with the parameters, eg subword length.

Read [fastText/tutorials/supervised-learning.md](https://github.com/facebookresearch/fastText/blob/master/tutorials/supervised-learning.md) to understand how the supervised classifier works on a toy example.

Note: Those on Windows systems must grab the .exe from the [fastText for Windows](https://github.com/xiamx/fastText/releases) .zip and can skip the `make` step.

Then train and test the classifier on the dataset at [kaggle.com/bittlingmayer/AmazonReviews](https://www.kaggle.com/bittlingmayer/AmazonReviews).

What compromises does the data format make?  
What does the subword parameter do?  
How do the parameters affect accuracy?  
How do the parameters affect training time?  
How would the results compare to pre-trained word vectors?  
How would 10x or 100x more data change the results?  
What will happen if the dataset has sentences in 100+ languages?
How could you use this for other tasks like language identification or spelling correction?  
How could you make meaningful datasets for fastText on the same scale?  

### Submission Instructions

Submit your code as Gist or repo

Example: gist.github.com/bittlingmayer/a276720c513a051737464855666eca12

### 1.. Create a new Gist or repo

<a href="https://gist.github.com" target="_blank">Create a GitHub gist</a> with the following files:  

```
preproc.sh
sentiment.sh
README.md
```
If you chose to use python, in that case `preproc.py` and/or `sentiment.py`.  And you made a good choice.

### 2. The Scripts

The preprocessing script should take a data file:  
```
preproc.sh <some data file in the fastText format>
```

The sentiment script should take the training and test file:  
```
sentiment.sh <training file> <test file>
```
And it should train fastText with the parameters that you have chosen, and then test it.

For example, if you ran with 300 dimensions and a learning rate of 0.7:
```
./fasttext supervised -input "@1" -output model_amzn -dim 300 -lr 0.7
./fasttext test -model model_amzn.bin "@2"
```

### 3. Explain your approach

The README should explain your approach and your results.

Did you take approaches that failed?  
Did training time increase or decrease?  
On what types of reviews did fastText perform the worst?   
What preprocessing did you do and why?  
What future improvements would you make?  

### 4. Submit

Send an email to fasttext@bittlingmayer.org with subject *fastText* and the link to your Gist or repo and your name, for example:

```
https://gist.github.com/jmustermann/a276720c513a051737464855666eca12
Johannes Mustermann
```


## More

Watch the second part of [Lecture 1 from Stanford's *Natural Language Processing with Deep Learning*](https://www.youtube.com/watch?v=OQQ-W_63UgQ)  

Read Manning [*Last Words: Computational Linguistics and Deep Learning*](mitp.nautil.us/article/170/last-words-computational-linguistics-and-deep-learning)  

Watch Hugo LaRochelle's *Neural networks* [10.1](https://www.youtube.com/watch?v=OzZIOiMVUyM&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH&index=79)... [10.6](https://www.youtube.com/watch?v=FoDz01QNSiY&index=84&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH)

https://explosion.ai/blog/deep-learning-formula-nlp  
https://spacy.io/docs/usage/word-vectors-similarities

https://aiexperiments.withgoogle.com/visualizing-high-dimensional-space  
http://projector.tensorflow.org

## Questions

In which area of NLP has deep learning had the most impact as of mid-2017?

Should we lowercase and remove punctuation from our dataset before training?

How many rows of data do we need for tasks like spelling correction or translation?

What is Google SentencePiece for?
