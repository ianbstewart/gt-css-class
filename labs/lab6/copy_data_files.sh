# copy tweet files from server
START_DAY=1
END_DAY=4
YEAR=2017
MONTH=10
SSH_LINK=istewart6@conair.cc.gatech.edu
CORPUS_DIR=/hg190/istewart6/crisis_language/data/mined_tweets
FILE_PREFIX=#Maria\\,#HurricaneMaria\\,#PuertoRico
# build list of corpora
CORPORA=()
for DAY in $(seq -s " " -f %02g $START_DAY $END_DAY);
do
    DAY_1=$(($DAY + 1))
    DAY_1=$(printf "%02d" $DAY_1)
    CORPUS_NAME="$FILE_PREFIX"_$YEAR-$MONTH-"$DAY"_$YEAR-$MONTH-"$DAY_1".gz
    CORPORA+=($CORPUS_NAME)
done
echo "${CORPORA[@]}"
IFS="," eval 'CORPORA_JOINED=\{"${CORPORA[*]}"\}'
CORPORA_STR=$SSH_LINK:$CORPUS_DIR/$CORPORA_JOINED
scp $CORPORA_STR data/