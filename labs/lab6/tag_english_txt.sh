CURR_DIR=$(pwd .)
echo $CURR_DIR
NLP_DIR=$CURR_DIR/twitter_nlp
export TWITTER_NLP=$NLP_DIR
TXT_FILE=$CURR_DIR/data/tweet_text_en.txt
NER_OUTPUT_FILE=$CURR_DIR/data/tweet_text_en_ner.txt
python $NLP_DIR/python/ner/extractEntities.py $TXT_FILE --text-pos 1 --output-file $NER_OUTPUT_FILE