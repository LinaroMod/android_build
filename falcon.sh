#!/bin/bash

#dir = Ruta donde se encuentra el source.
dir=~/MinimalUI_Linaro

#out = Ruta donde hace el zip.
out=/out/target/product/falcon

echo "Iniciando compilacion..."

cd $dir

source build/envsetup.sh
lunch falcon-userdebug && make installclean && make otapackage -j6
