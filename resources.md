
More resources for learning and building natural language processing:  

### Libraries and Services

NLTK has a lot of legacy and momentum, and support for many languages.

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

### Reading

Hugo LaRochelle's [*Neural networks [10] Natural language processing* [10.1](https://www.youtube.com/watch?v=OzZIOiMVUyM&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH&index=79)

[*Introduction to Information Retrieval*](https://nlp.stanford.edu/IR-book/) on search not natural language per se

### Institutions

Aachen, Edinburgh, Sheffield, http://nlp.shef.ac.uk/

### Conferences

ACL, EMNLP, NAACL and CoNLL

### Fora and News

Reddit: r/LanguageTechnology, r/textdatamining, r/MachineLearning

StackExchange: [datascience](https://datascience.stackexchange.com), [lingistics](https://linguistics.stackexchange.com), [stats](https://stats.stackexchange.com) with tags natural-language, nlp, parsing etc.

Twitter: #NLProc, @stanfordnlp, @acl2017
