#!/bin/sh

UrlBase:"https://tureng.com/en/turkish-english/"
DirCached:"$HOME/.config/tureng/"

[ -d $DirCached ] || mkdir -p $DirCached;

# TODO
#		0.
#			Create ncurses interavtice preload word predictions with
#			this query url (returns (not)json)
#	
#			https://ac.tureng.co/?t=[PREWRITTENWORD]&l=entr
#
#		1.
#			Save searched words to $DirCached
#			Load these data for offline interactive predictions and results
#
#		2.
#			If there is --no-cache option then do not save to $DirCached
