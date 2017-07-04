export PATH=$PATH:/opt/tiger/spark_deploy/spark-2.1.x-bytedance/bin
export PATH=$PATH:~/.local/bin/:~/Taolib
export SPARK_HOME=/opt/tiger/spark_deploy/spark-2.1.x-bytedance
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib:$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
#export PYTHONPATH=~/Taolib:$PYTHONPATH
export FEED_HOME=~/repos
export PYTHONPATH=$FEED_HOME:$FEED_HOME/pyutil:$FEED_HOME/ss_thrift_gen:$FEED_HOME/ss_lib/python_package/lib/python2.7/site-packages:$PYTHONPATH:$FEED_HOME/ss_ml/
alias hadoop='/opt/tiger/yarn_deploy/hadoop-2.3.0-cdh5.1.0/bin/hadoop'
export HADOOP_USER_NAME=tiger
export HADOOP_USER=tiger
export SPARK_USER_NAME=tiger
export SPARK_USER=tiger
alias _pyspark='pyspark --master yarn-client --queue data.ad --driver-memory 8g --executor-memory 8g --num-executors 30 --name shell_liuruntao --conf spark.kryoserializer.buffer.max=256m '
alias toTarget='cd ~/repos/ss_ml/ad/targeting'
alias CR='git push origin HEAD:refs/for/master%r=longrui,topic=ec_action'
alias LOG2='cat submit_ver2.log | grep -E "submit\.py|util\.py" | grep -v java | grep -v "^s" | grep -v "thrift_util" | grep -v "Thrift"'
alias LOG1='cat submit_ver1.log | grep -E "submit\.py|util\.py" | grep -v java | grep -v "^s" | grep -v "thrift_util" | grep -v "Thrift"'
eval "$(thefuck --alias)"

export APOLLO_HOME=/opt/tiger/apollo
export PATH=$PATH:$APOLLO_HOME/bin


export PS1="\[\e[31;1m\]\u@\[\e[34;1m\]\h \[\e[36;1m\]\W $\[\e[37;1m\] "
export PS1="\A \u@\h \W > \[$(tput sgr0)\]"
export PS1="\d \A \u@\h \[\e[37;42m\]\W\[\e[m\] \[\e[31m\]>\[\e[m\] "
export PS1="\d \A \u@\h \[\e[30;47m\]\W\[\e[m\] \[\e[31m\]>\[\e[m\] "
#export PS1="\d \A \u@\h \[\e[33;42m\]\W\[\e[m\] \[\e[31m\]>\[\e[m\] "

alias rm=trash 
trash()  
{
	mv $@ ~/.trash/  
} 
