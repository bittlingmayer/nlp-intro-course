### About the course

I am teaching the , as a one-week section on natural language processing as part of a four-month course on machine learning for engineers and mathematicians.  The goal is to teach a mix of theory and practical know-how.

It's earth year 2017, and the field is changing faster than usual.  The first lecture gives some background on the ideas of the 1990s and 2000s, but the code for some of the projects will probably not compile in a year.

Prerequisites: machine learning basics, prerequisites for machine learning basics (python, git, pip, virtualenv, mathematics...) and 2+ natural languages and 2+ scripts

System requirements: prerequisites for machine learning basics (ideally Unix-based with python3, but GPU not required)

Questions?  Open an [issue](https://github.com/bittlingmayer/nlp-intro-course/issues) or ping nlp-intro-course@bittlingmayer.org.

## Day 1: Background of Natural Language Processing

### Lecture 1

What problems are considered NLP, what the motivation is, why language is hard, why humans are good at it, what structure and mathematical properties language has, why rules-based doesn't scale, what is solved, what is unsolved, what is unsolvable…

### Lecture 2
We cover the language of language: anaphora, BLEU, canonicalisation, grammars, lemmatisation, n-grams, parallel corpora, segmentation, tokenisation, Zipf's law...

### Lab:
Increase the accuracy of Peter Norvig's classic [spelling corrector in half a page of code](http://norvig.com/spell-correct.html) without hurting performance too much.

### More
Watch [Lecture 1 from Stanford's *Natural Language Processing with Deep Learning*](https://www.youtube.com/watch?v=OQQ-W_63UgQ), and understand the title of each chapter of [Foundations of Statistical Natural Language Processing](https://nlp.stanford.edu/fsnlp/)

Libraries to know: NLTK

It also pays to understand how python3 handles strings.

## Day 2: Deep Learning for NLP

### Lecture 1
Motivation for deep learning, trade-offs of preprocessing, autoencoders and word embeddings, doc vectors vs word vectors vs char vectors, comparison to old-school techniques like TF-IDF and LSA

### Lecture 2
Generating data

### Lab
spaCy

### More
Supplementary reading: watch Hugo LaRochelle's *Neural networks* [10.1](https://www.youtube.com/watch?v=OzZIOiMVUyM&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH&index=79)... [10.6](https://www.youtube.com/watch?v=FoDz01QNSiY&index=84&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH), read [Manning: *Last Words: Computational Linguistics and Deep Learning*](mitp.nautil.us/article/170/last-words-computational-linguistics-and-deep-learning)

## Day 3: Natural Language Understanding and Generation



### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/bittlingmayer/nlp-intro-course/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.


## More #NLProc

### Libraries and Services

If you need to deal with more languages than English, the choices will be more complex.

All of the below are in python or have a python client unless otherwise marked.

There are third-party python wrappers for most popular C/C++ and Java libraries.

#### Parsers

These parsing libs also do tokenisation, named-entity recognition and so on.

spaCy | python
Stanford CoreNLP | Java
Google Cloud Natural Language API | many languages

#### Word Embedding
Avoid training your own word embeddings if possible.  Facebook has released pre-trained word embeddings for hundreds of languages.  Parsing libs like spaCy also expose word vectors.
gensim for Mikolov's word2vec  
Stanford gloVe | C
FaceBook fastText | python

#### Sentiment Analysis
Indico.io API | many languages
Google Cloud Natural Language API | many languages

### Reading

Hugo LaRochelle's [*Neural networks [10] Natural language processing* [10.1](https://www.youtube.com/watch?v=OzZIOiMVUyM&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH&index=79)

[*Introduction to Information Retrieval*](https://nlp.stanford.edu/IR-book/) on search not natural language per se

### Institutions

Aachen, Edinburgh, Sheffield, http://nlp.shef.ac.uk/

### Conferences

ACL, EMNLP, NAACL and CoNLL

### News
#NLProc, r/LanguageTechnology, @stanfordnlp
