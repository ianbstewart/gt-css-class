# extract additional tweets from archives
DATA_DIR=/hg190/corpora/twitter-crawl/daily-tweet-archives
OUT_DIR=ebola_tweets_extra
# start with a two-week period
# START_DATE="Aug-29-14"
# TOTAL_DAYS=60
# DATES=$(seq 1 $TOTAL_DAYS | xargs -I {} date -d "$START_DATE {} days" +%m-%d-%y)
DATES=(Aug-29-14 Aug-30-14 Aug-31-14 Sep-01-14 Sep-02-14 Sep-03-14 Sep-04-14 Sep-05-14 Sep-06-14 Sep-07-14 Sep-08-14 Sep-09-14 Sep-10-14 Sep-11-14 Sep-12-14 Sep-13-14 Sep-14-14 Sep-15-14 Sep-16-14 Sep-17-14 Sep-18-14 Sep-19-14 Sep-20-14 Sep-21-14 Sep-22-14 Sep-23-14 Sep-24-14 Sep-25-14 Sep-26-14 Sep-27-14 Sep-28-14 Sep-29-14 Sep-30-14 Oct-01-14 Oct-02-14 Oct-03-14 Oct-04-14 Oct-05-14 Oct-06-14 Oct-07-14 Oct-08-14 Oct-09-14 Oct-10-14 Oct-11-14 Oct-12-14 Oct-13-14 Oct-14-14 Oct-15-14 Oct-16-14 Oct-17-14 Oct-18-14 Oct-19-14 Oct-20-14 Oct-21-14 Oct-22-14 Oct-23-14 Oct-24-14 Oct-25-14 Oct-26-14 Oct-27-14)
# DATES=("Aug-29-14" "Aug-30-14" "Aug-31-14" "Sep-01-14" "Sep-02-14" "Sep-03-14" "Sep-04-14" "Sep-05-14" "Sep-06-14" "Sep-07-14" "Sep-08-14" "Sep-09-14" "Sep-10-14" "Sep-11-14" "Sep-12-14" "Sep-13-14" "Sep-14-14" "Sep-15-14" "Sep-16-14" "Sep-17-14" "Sep-18-14" "Sep-19-14" "Sep-20-14" "Sep-21-14" "Sep-22-14" "Sep-23-14" "Sep-24-14" "Sep-25-14" "Sep-26-14" "Sep-27-14" "Sep-28-14")
# we want ebola tweets
KEYWORD="#Ebola"
for D in "${DATES[@]}";
do
    CORPUS=$DATA_DIR/tweets-"$D"-[0-9][0-9]-[0-9][0-9].gz
    OUT_FILE=$OUT_DIR/"$D".json
    echo $CORPUS
    (zgrep $KEYWORD $CORPUS > $OUT_FILE)&
done