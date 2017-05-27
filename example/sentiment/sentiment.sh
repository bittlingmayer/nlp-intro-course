./fasttext supervised -input data/amazon_reviews/train.ft.txt -output model_amzn

./fasttext test -model model_amzn.bin data/amazon_reviews/test.ft.txt

