# 1. Background

## Lecture 1

What problems are considered NLP, what the motivation is, why language is hard, why humans are good at it, what structure and mathematical properties language has, why rules-based doesn't scale, what is solved, what is unsolved, what is unsolvable…

[Slides](https://docs.google.com/presentation/d/1PFiCfZj1OwgRlZRMAew91Q-gwkPe0z0jqBRabwqO9ik/edit?usp=sharing)

## Lecture 2

Non-English, non-Latin script and multilingual problems.  What is different about NLP for English?

The language of language: anaphora, BLEU, canonicalisation, grammars, lemmatisation, n-grams, parallel corpora, segmentation, tokenisation, Zipf's law...

[Slides](https://docs.google.com/presentation/d/1_m43ckMWY5PDyo1oPPG5SyLkI-pF7wDfnCwTqoeHAiI/edit?usp=sharing)

## Lab
Increase the accuracy of Peter Norvig's classic [spelling corrector in half a page of code](http://norvig.com/spell-correct.html) without hurting performance too much.

Here's [the code](https://gist.github.com/bittlingmayer/568c04604efff73dbe2c6140c7c87a72).

Some ideas: generate more or better candidates, add a cost function, use context, use the subword level, preprocess, add more data...

Peter Norvig has explained in depth many potential improvements on his page.

### Submission Instructions

Submit your code as a Kaggle Kernel to <a href="https://kaggle.com/bittlingmayer/spelling/" target="_blank">[kaggle.com/bittlingmayer/spelling]</a>

Example:  
[example with the baseline](https://www.kaggle.com/bittlingmayer/spell-py)

#### 1. Add a new Kernel  
Click *New Kernel*  
Choose *Script* or *Notebook* according to your preference  
Title it *spell.py*

#### 2. Edit the script

Delete what is there and paste in your spell.py and the evaluation code.

See the [example with the baseline](https://www.kaggle.com/bittlingmayer/spell-py), which is Norvig's spell.py plus the evaluation code, with the following changes to work in a Kaggle Kernel:

big.txt is already in the environment, at `../input/big.txt`.

So change the file path to start with `../input/`, for example:  
```
WORDS = Counter(words(open('../input/big.txt').read()))
```
If you need to change some unit tests, that is fine.  In fact, the tests in Norvig's original code break on the current version of big.txt.

If you need to do pre-processing of the data, note that you can write out files to the current directory too.

You must change the code at the end to test and print the result:
```
def test_corpus(filename):
    print("Testing " + filename)
    spelltest(Testset(open('../input/' + filename)))     

test_corpus('spell-testset1.txt') # Development set
test_corpus('spell-testset2.txt') # Final test set

# Supplementary sets
test_corpus('wikipedia.txt')
test_corpus('aspell.txt')
```

#### 3. Test
Click *Run* to save and run  
Open the *Options* tab and click *Hide Script* if you do not want others to see or find your code
Open the *Log* tab  
You should see something similar to this:  
```
unit_tests pass
Testing spell-testset1.txt
75% of 270 correct (6% unknown) at 30 words per second
Testing spell-testset2.txt
68% of 400 correct (11% unknown) at 25 words per second
Testing wikipedia.txt
61% of 2455 correct (24% unknown) at 18 words per second
Testing aspell.txt
43% of 531 correct (23% unknown) at 13 words per second 
```

#### 5. Explain your approach

Make sure the script or Notebook is professionally commented and formatted

In the *Comments* tab of the Kernel, explain your approach:

Did you do preprocessing?

What approaches did you try that failed?

What potential improvements could you make?

#### 6. Submit

Send an email to spelling@bittlingmayer.org with subject *Spelling* and message with your name and the link to your Kernel: 

*<your name\>: kaggle.com/<your-username\>/spell-py*


## More

Read [*double articulation*](https://en.wikipedia.org/wiki/Double_articulation)

Watch the first part of [Lecture 1 from Stanford's *Natural Language Processing with Deep Learning*](https://www.youtube.com/watch?v=OQQ-W_63UgQ)  

Understand the title of each chapter of [Foundations of Statistical Natural Language Processing](https://nlp.stanford.edu/fsnlp/)  

Try to understand [how `str` works in python 3](https://docs.python.org/3/howto/unicode.html#python-s-unicode-support)  

Play with the [displaCy](https://demos.explosion.ai/displacy/) parsing visualisation

Read [Norvig vs Chomsky](http://norvig.com/chomsky.html) with a good drink

