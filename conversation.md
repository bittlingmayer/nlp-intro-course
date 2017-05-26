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
```

If you hit an encoding problem, open `setup.py` and change `open('README.md')` to `open('README.md', encoding = 'utf-8')`.

```
To test that it was installed correctly:
python examples/display_model.py -m ir_baseline -t "#moviedd-reddit" -dt valid
python examples/eval_model.py -m ir_baseline -t simplequestions -dt valid
```

Improve the baseline accuracy for one of the corpora
Then you can take multiple approaches:

1. Preprocessing
Improve the dataset by canonicalising or adding tokens.  
For example using spacy to add POS tags.

2. Word embeddings
Modify [parlai/agents/ir_baseline/agents.py](https://github.com/facebookresearch/ParlAI/blob/master/parlai/agents/ir_baseline/agents.py) to eplace TFIDF with word embeddings  
For example use spacy for pre-trained or fasttext to train on this data.  

3. Learning
Use memnn_luatorch_cpu or drqa.  
This requires Unix and takes a long time.


## More

https://en.wikipedia.org/wiki/Mechanical_Turk 1770  
https://en.wikipedia.org/wiki/ELIZA 1966
