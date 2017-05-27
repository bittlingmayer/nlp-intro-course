./fasttext supervised -input "@1" -output model_amzn

./fasttext test -model model_amzn.bin "@2"

