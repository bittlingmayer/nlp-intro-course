
Here are more resources for building and learning.

## Build

### Libraries and Services

NLTK has a lot of legacy and momentum, and supports many languages, but it is a bit heavyweight.

If you need to deal with more languages than English, the choices will be more complex.

All of the below are in python or have a python client unless otherwise marked.

There are third-party python wrappers for most popular C/C++ and Java libraries.

#### Parsers

These parsing libs also do tokenisation, named-entity recognition and so on.

spaCy | python  
Stanford CoreNLP | Java  
Google SyntaxNet | python  
Google Cloud Natural Language API | many languages  

See also: [Universal POS tags](http://universaldependencies.org/u/pos/index.html)

#### Word Embedding
Avoid training your own word embeddings if possible.  Facebook has released pre-trained word embeddings for hundreds of languages.  Parsing libs like spaCy also expose word vectors.  

gensim for Mikolov's word2vec  
Stanford gloVe | C  
FaceBook fastText | python  

#### Sentiment Analysis
Indico.io API | many languages  
Google Cloud Natural Language API | many languages

#### Conversational
https://github.com/facebookresearch/ParlAI  
https://github.com/stanfordnlp/cocoa  
seq2seq

## Learn

### Reading and Courses

Hugo LaRochelle's [*Neural networks [10] Natural language processing* [10.1](https://www.youtube.com/watch?v=OzZIOiMVUyM&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH&index=79)

### Courses
[*Introduction to Information Retrieval*](https://nlp.stanford.edu/IR-book/) on search not natural language per se

### Institutions

Aachen, Edinburgh, Sheffield, http://nlp.shef.ac.uk/

### Tutorials
Here are some tutorials for simple but powerful concepts.

They link to useful datasets.

http://norvig.com/spell-correct.html

https://blog.twitter.com/2015/evaluating-language-identification-performance

http://yerevann.github.io/2016/09/09/automatic-transliteration-with-lstm/

http://atpaino.com/2017/01/03/deep-text-correcter.html

https://explosion.ai/blog/spacy-deep-learning-keras

https://explosion.ai/blog/quora-deep-text-pair-classification  
https://explosion.ai/blog/supervised-similarity-siamese-cnn

https://medium.com/redsift-outbox/hillary-emails-not-just-useful-for-winning-elections-5bdb10c75252  
https://medium.com/redsift-outbox/what-time-cc9ce0c2aed2

https://google.github.io/seq2seq/nmt/

### Datasets

http://www.statmt.org/, eg http://www.statmt.org/wmt17/

https://en.wikipedia.org/wiki/List_of_datasets_for_machine_learning_research#Text_data

https://opendata.stackexchange.com

[Facebook pre-trained word vectors for fastText](https://github.com/facebookresearch/fastText/blob/master/pretrained-vectors.md) for 294 languages

[Facebook user names](https://wiki.skullsecurity.org/Passwords#Facebook_lists)

Wikipedia dumps, Open Subtitles, WSJ data, Enron emails, Hillary email, Hacker news archives...

### Conferences

ACL, EMNLP, NAACL and CoNLL

## Follow and Ask

News and fora:  

Reddit: r/LanguageTechnology, r/textdatamining, r/MachineLearning

StackExchange: [datascience](https://datascience.stackexchange.com), [lingistics](https://linguistics.stackexchange.com), [stats](https://stats.stackexchange.com) with tags natural-language, nlp, parsing etc.

Twitter: #NLProc, @stanfordnlp, @acl2017
