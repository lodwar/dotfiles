#function prompt_err { 
 # if test "$?" -eq 0; then PS1=': \W$; '; else PS1=': \W [ERROR#$?]$; '; fi
#}
#PROMPT_COMMAND=prompt_err
#PS2='    '

EXIT="$?"
PS1="\[\033[0;34m\][\!] ExitCode: \$? \`if [[ \$? = "0" ]]; then echo "\\[\\033[39m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u@\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\w"; else echo "\\w"; fi\`]\$\[\033[0m\] \007 \n"


alias d='df -h'
alias p='ps ax'
alias powe='poweroff'
alias a='audacious'
alias fox='firefox'
alias o='opera'
alias tof='synclient TouchpadOff=1'
alias db='deadbeef'
alias sm='smplayer'
alias wf='wifi-menu'
alias tra='transmission-gtk'
alias chr='LANG=ru_RU.utf-8 chromium --user-data-dir=/tmp --no-sandbox'
alias gr='cp -f ~/resolv.conf /etc/'
alias st='sudo ntpdate -s time.nist.gov'
