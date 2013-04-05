#!/bin/sh
# http://stackoverflow.com/questions/8537149/how-to-start-tmux-with-several-windows-in-different-directories
# http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#tmux-shell-scripting
# http://www.tofu.org/drupal/node/183
# https://github.com/dlbewley/tmux-scripts/blob/master/tmuxgo

SESSION="dataalpha"
ROOTDIR="~/work/dataalpha/lift_25_bootmetro_css"

#echo """
# create new tmux session, name it $SESSION
tmux new-session -d -s $SESSION

# create new tabs, attach all to $SESSION 
tmux new-window -t $SESSION:1 -n "Server1" "cd $ROOTDIR" # ./sbt container:start
tmux new-window -t $SESSION:2 -n "Server2" "cd $ROOTDIR" # git-sh
tmux new-window -t $SESSION:3 -n "Server3" "cd $ROOTDIR/cloudbees" # bees app:deploy
tmux new-window -t $SESSION:4 -n "Server4" "cd $ROOTDIR/src/main/scala/bootstrap/liftweb" #vim Boot.scala
tmux new-window -t $SESSION:5 -n "Server5" "cd $ROOTDIR/src/main/webapp"
tmux new-window -t $SESSION:6 -n "Server6" "cd $ROOTDIR/src/main/webapp"
tmux new-window -t $SESSION:7 -n "Server7" "cd $ROOTDIR/src/main/webapp"
tmux new-window -t $SESSION:8 -n "Server8" "cd $ROOTDIR/src/main/webapp"
tmux new-window -t $SESSION:9 -n "Server9" "cd $ROOTDIR/src/main/webapp"
tmux new-window -t $SESSION:10 -n "Server10" "cd $ROOTDIR/src/main/webapp"

 
tmux select-window -t $SESSION:1
tmux -2 attach-session -t $SESSION
#"""
