# 3. Conversation

Building dialogue systems - "voice UI", "chat bots", "conversational AI", "intelligent virtual assistants" etc - based on natural language understanding.

## Lecture 1

Quality vs coverage, context representation, seq2seq, human-in-the-loop, re-inforcement learning

[Slides](https://docs.google.com/presentation/d/1nRGvGMxrZPAsC8IePug3pUc8ITIAB8H5CC3sE3fpnkQ/edit?usp=sharing)

## Lecture 2

How do we validate or measure success of decoder output?

Datasets, code and APIs from Facebook, Amazon, Microsoft and Google

[Slides](https://docs.google.com/presentation/d/1CBmYfbso9FquyoB-Vh0hTXv33N9f5-jgfKwyayaUY_Q/edit?usp=sharing)

## SQuAD

[SQuAD](https://rajpurkar.github.io/SQuAD-explorer/) from Pranav Rajpurkar at Stanford is a unique dataset for dialogue research.

Input: a paragraph from Wikipedia, and a question about the paragraph  

Output: two integers, the start and end index of the 

Example:

```context: "Nikola Tesla (Serbian Cyrillic: Никола Тесла; 10 July 1856 – 7 January 1943) was a Serbian-American inventor, electrical engineer, mechanical engineer, physicist, and futurist who is best known for his contributions to the design of the modern alternating current (AC) electricity supply system."```

```question: "When was Nikola Tesla born?"```

```answer: [54, 58]```

And `context[54:58]` evaluates to `"1856"`.

(Humans created the questions, and other humans highlighted the answers to create the start and end indices.)

This is interesting for a few reasons:  

1. It is a learnable and measurable task, because the output is two integers, not text.  

2. It is a step towards being able to let a machine learn context or read, say, a book in order to improve its so-called intelligence.

See the leaderboard, and click *Explore SQuAD and model predictions* and compare the results for different models, for example for the article *Nikola Tesla*.


## ParlAI

[ParlAI](http://parl.ai) is a new "unified platform for training and evaluating dialog models across many tasks" from the Facebook Research group.

It makes it easy to get started doing research work.  Dozens of useful corpora are included and formatted.  There are baseline algorithms and deep learning implementations.  There is even an integration with Amazon Mechanical Turk.

Read http://parl.ai/static/docs/basic_tutorial.html

To install ParlAI:

```
git clone https://github.com/facebookresearch/ParlAI.git
cd ParlAI
python setup.py develop
```

If you hit an encoding problem, open `setup.py` and change `open('README.md')` to `open('README.md', encoding = 'utf-8')`.
If you hit a similar problem in `fbdialog_teacher.py` or other files, the fix is the same.

Install the requirements:
```
pip3 install -r requirements.txt
```
  
To test that ParlAI and the requirements were installed correctly:  
```
python examples/eval_model.py -m ir_baseline -t simplequestions -dt valid

python examples/eval_model.py -m ir_baseline -t "#moviedd-reddit" -dt valid
```
You have now trained and run the baseline model on two different corpora.  

To see its actual answers:

```
python examples/display_model.py -m ir_baseline -t simplequestions -dt valid

python examples/display_model.py -m ir_baseline -t "#moviedd-reddit" -dt valid
```
It's not very good.

Now is also a good time to get the data files for parsing and tagging English text with spacy.
```
python -m spacy download en
```

## Lab

[Slides](https://docs.google.com/presentation/d/1yLHX748wU_6i1FVJPxORgCx7pYnfLzX2dfbUE1cHmLk/edit?usp=sharing)

**Improve the baseline accuracy for one of the ParlAI corpora**

You can choose from any of the corpora included with ParlAI.  They have different output types (eg SQuAD), different domains, and also very different data sizes.

The default `ir_baseline` model uses old-school [TF-IDF](https://en.wikipedia.org/wiki/Tf%E2%80%93idf), which is very ineffective for this problem.

ParlAI also included DrQA, which is a NN-based model especially for SQuAD.  It requires Torch, the ML lib used at and supported by Facebook Research.

Note that when you make a change to the ParlAI code, you must re-run `python setup.py develop` for the command-line utility to recompile with the changes.

You can take multiple approaches to improve the accuracy:

#### 0. Parameter tuning

You can play with the hyperparameters:  
```
[num_examples:1000]
[model_params:]
[numthreads:1]
[batchsize:1]
[model_file:]
...
```

The agent itself also has parameters:  
```
IrBaselineAgent
[datatype:train]
[numthreads:1]
[dict_language:english]
[batchsize:1]
[dict_unktoken:<UNK>]
[length_penalty:0.5]
[dict_nulltoken:<NULL>]
...
[dict_minfreq:0]
[dict_max_ngram_size:-1]
...
```

About `length_penalty`: variable-length input and output is a fundamental challenge in dialogue systems, because techniques like seq2seq are ideal for input and output sequences of the same length.

#### 1. Better Data

Add a new dataset.  For example, use the Amazon dataset to train an agent that takes a review text as input and predicts a title, or takes a title as input and predicts a review text (more difficult).

Improve the dataset by canonicalising, or adding information.  For example, use spacy to add POS tags.  Save this as `preproc.py`.

#### 2. Word embeddings
Modify [parlai/agents/ir_baseline/agents.py](https://github.com/facebookresearch/ParlAI/blob/master/parlai/agents/ir_baseline/agents.py) to replace TFIDF with word embeddings  

See the function `act`.  The current code just gets the representation of the query (`build_query_representation`), and iterates through aaall the candidates (`rank_candidates`), and compares the representation (`score_match`).

It also removes [stopwords](https://en.wikipedia.org/wiki/Stop_words) that may not add much meaning.

For example, use spacy for good pre-trained vectors:  

```
import spacy
nlp = spacy.load('en')
doc = nlp("When was Nikola Tesla born?")
doc.vector
doc[0].vector # Vector for the first word "when"
doc[:-1].vector # Vector for the last word "born"
[w.vector for w in doc.ents] # Named entities
```

Or you can use fasttext to train vectors from this dataset.

You can take the cosine distance between the question and the answer candidates.

#### 3. Learning
Use neural network model options `memnn_luatorch_cpu` or `drqa`.  These require a Unix-based system and great patience - it takes hours or days to train

To make it train faster, you can use toy parameters, for example:   
`--doc_layers 1 --question_layers 1 --use_qemb f --rnn_type gru`

With those parameters, it takes about half an hour to train on a normal labtop.

Then it begins the validation:
```
05/27/2017 08:17:00 AM: [ Running validation... ]
05/27/2017 08:25:24 AM: [valid] iter = 2 | EM = 0.0191 | F1 = 0.0717 | exs = 3036
05/27/2017 08:25:24 AM: [ Done. Time = 504.57 (s) ]
```
The result is very modest.

You can also feed the word embeddings you get from spacy or fasttext to a machine learning lib like Theano or TensorFlow.

#### Note
It is not required to use ParlAI, it is recommended because it makes it easier.

### Submission Instructions

Branch the https://github.com/facebookresearch/ParlAI/ repo

Submit your code changes to the branch

Send an email with subject *Agent* to agent@bittlingmayer.org

In the email, include a link to the branch on GitHub and explain your approach.

Which corpus or corpora did you use for development and testing?

Did you try any approaches that failed?

Do you do any pre-processing?

How did accuracy improve or change and was the metric useful?

## More

[Mechanical Turk](https://en.wikipedia.org/wiki/Mechanical_Turk) 1770  
[ELIZA](https://en.wikipedia.org/wiki/ELIZA) 1966  
[*A Survey of Available Corpora for Building
Data-Driven Dialogue Systems*](https://arxiv.org/pdf/1512.05742.pdf)  
https://developers.facebook.com/docs/messenger-platform  
https://developers.google.com/actions/  
https://api.ai  
video: [Amazon Echo & Google Home having a conversation](https://www.youtube.com/watch?v=t5bYtcjWcPQ)  
video: [*Infinite Looping Siri, Alexa and Google Home*](https://www.youtube.com/watch?v=vmINGWsyWX0)  
