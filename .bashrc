
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
