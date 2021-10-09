#!/bin/sh
# git-access uninstall

aliases=( "history" "graph" "standard" "changes" "branches" "stashes" "tags" "id" "open" "correction" "uncommit" "staged" "unstage" "discard" "lostfound" "recover" )
for i in "${aliases[@]}"
do
	git config --global --unset alias.$i
done
