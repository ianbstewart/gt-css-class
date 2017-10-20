# need to add java to path and NER to classpath
CURR_DIR=$(pwd .)
PATH=$PATH:/usr/lib/jvm/java-1.8.0-ibm-1.8.0.4.5-1jpp.1.el7_3.x86_64/
CLASSPATH=$CLASSPATH:$CURR_DIR/lib
TXT_FILE=$CURR_DIR/data/tweet_text_es.txt
NER_OUTPUT_FILE="${TXT_FILE/.txt/_ner.txt}"

# run NER
cd lib/stanford-ner-2017-06-09
# java -mx600m -cp "*:lib\*" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/english.all.3class.distsim.crf.ser.gz -textFile sample.txt
java -mx600m -cp "*:lib\*" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier classifiers/spanish.ancora.distsim.s512.crf.ser.gz -textFile $TXT_FILE > $NER_OUTPUT_FILE