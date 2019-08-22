#!/bin/zsh
backgrounds=(~/Desktop/striped/*)
randomBackground=$backgrounds[(RANDOM % $#backgrounds + 1)]

IFS=$'\n' fonts=($(< ~/.sh/.fonts.log))

randomFont=$fonts[(RANDOM % $#fonts + 1)]

   [ -f ~/Library/Fonts/$randomFont.ttf ] \
&& randomFont=~/Library/Fonts/$randomFont'.ttf' \
|| randomFont=~/Library/Fonts/$randomFont'.ttc'

randomRotation=$(( RANDOM % 45 ))
randomQuote=$(brainy | fold -w 20 -s)

convert $randomBackground -font $randomFont -pointsize 92 -gravity center \
	-fill black -annotate ${randomRotation}x+0-1 $randomQuote  \
	-fill white -annotate ${randomRotation}x+0+0 $randomQuote  \
	~/Desktop/$RANDOM.png
