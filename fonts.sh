URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
dwnl=$(pwd)/.fonts.zip
fdir=/usr/local/share/fonts
mkdir -p $fdir
curl -L "$URL" --output .fonts.zip
cd $fdir
unzip -v "$dwnl"
