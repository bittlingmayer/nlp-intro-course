# 3. Conversation

Building dialogue systems - "voice UI", "chat bots", "conversational AI", "intelligent virtual assistants" etc - based on natural language understanding.

## Lecture 1

Quality vs coverage, context representation, seq2seq, human-in-the-loop

Slides [coming soon]

## Lecture 2

Datasets, code and APIs from Facebook, Amazon, Microsoft and Google

Slides [coming soon]

## Lab

Parl AI [Facebook]:
- http://parl.ai
- https://github.com/facebookresearch/ParlAI/blob/docs-format-fix/README.md

How is Amazon Mechanical Turk used by researchers?  How do we validate or measure success of decoder output?

SQuAD [Stanford]:
 - https://rajpurkar.github.io/SQuAD-explorer/

[Slides](https://docs.google.com/presentation/d/1yLHX748wU_6i1FVJPxORgCx7pYnfLzX2dfbUE1cHmLk/edit?usp=sharing)

To install ParlAI:

```
git clone https://github.com/facebookresearch/ParlAI.git
cd ParlAI; python setup.py develop
pip3 install -r requirements.txt
python -m spacy download en
```

If you hit an encoding problem, open `setup.py` and change `open('README.md')` to `open('README.md', encoding = 'utf-8')`.
If you hit a similar problem in `fbdialog_teacher.py`, the fix is the same.

```
To test that it was installed correctly:
python examples/display_model.py -m ir_baseline -t "#moviedd-reddit" -dt valid
python examples/eval_model.py -m ir_baseline -t simplequestions -dt valid
```

Improve the baseline accuracy for one of the corpora
Then you can take multiple approaches:

1. Preprocessing
Improve the dataset by canonicalising or adding information.  
For example using spacy to add POS tags.
Save this as `preproc.py`.

2. Word embeddings
Modify [parlai/agents/ir_baseline/agents.py](https://github.com/facebookresearch/ParlAI/blob/master/parlai/agents/ir_baseline/agents.py) to eplace TFIDF with word embeddings  
For example use spacy for good pre-trained vectors, or fasttext to train on this data.
```
import spacy
nlp = spacy.load('en')
doc = nlp("When was Nikola Tesla born?")
doc.vector
doc[0].vector # Vector for the first word "when"
doc[:-1].vector # Vector for the last word "born"
[w.vector for w in doc.ents] # Named entities
```

3. Learning
Use `memnn_luatorch_cpu` or `drqa`.  These require a Unix-based system and great patience - it takes hours or days to train.
You can also feed the word embeddings to Theano or TensorFlow.

## More

https://en.wikipedia.org/wiki/Mechanical_Turk 1770  
https://en.wikipedia.org/wiki/ELIZA 1966
