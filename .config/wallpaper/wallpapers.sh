
COMMAND="swww img"
ran=0
[[ ! -f ".ran" ]] && touch .ran
lran=$(cat .ran)
counter=1
function wp { 
  if [ "$counter" == "$ran" ]; then 
    ipath="$(ls ~/.config/wallpaper/$1 | head -n 1)"
    $COMMAND $ipath
    echo aware $lran select $counter $ipath
    exit 0
  else 
    let counter++
  fi
}
TRANSITION_TYPE="simple" # simple | left | right | top | bottom | wipe | wave | grow | center | any | outer | randomsimple | left | right | top | bottom | wipe | wave | grow | center | any | outer | random
FILTER="Lanczos3" # Nearest | Bilinear | CatmullRom | Mitchell | Lanczos3
function ps {
  while [ "$lran" == "$ran" ] || [ "$ran" == "0" ]; do ran=$(shuf -i 1-$1 -n 1); done
  echo $ran > .ran
}
function day { 
  ps 2
  wp wwu.00.22.26.png
  wp wwu.00.30.46.png
}
function lateday {
  day #inheritance
}
function sunset {
  ps 1
  wp jpsunset.jpg
}
function night {
  ps 5
  wp wwu.00.09.05.png
  wp wwu.00.09.40.png
  wp wwu.00.10.46.png
  wp yname.00.56.19.png
  wp yname.01.36.25.png
}
swww init
t="$(date +%H)"
if [ $t -le 24 ] || [ $t -le 6 ]; then night
elif [ $t -le 18 ]; then sunset
elif [ $t -le 16 ]; then lateday
elif [ $t -le 12 ]; then day
fi
echo $ran
