CURR_DIR=$(pwd .)
echo $CURR_DIR
NLP_DIR=$CURR_DIR/lib/twitter_nlp
export TWITTER_NLP=$NLP_DIR
TXT_FILE=$CURR_DIR/data/tweet_text_en.txt
# no class
NER_OUTPUT_FILE="${TXT_FILE/.txt/_ner.txt}"
python $NLP_DIR/python/ner/extractEntities.py $TXT_FILE --text-pos 1 --output-file $NER_OUTPUT_FILE
# class
# breaks after a few lines because of "cannot execute binary" error
# NER_OUTPUT_FILE="${TXT_FILE/.txt/_ner_class.txt}"
# python $NLP_DIR/python/ner/extractEntities.py $TXT_FILE --text-pos 1 --classify --output-file $NER_OUTPUT_FILE
