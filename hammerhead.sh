#!/bin/bash

#dir = Ruta donde se encuentra el source.
dir=~/MinimalUI_Linaro

#out = Ruta donde hace el zip.
out=/out/target/product/hammerhead

echo "Iniciando compilacion..."

cd $dir

source build/envsetup.sh
lunch hammerhead-userdebug && make installclean && make otapackage -j3
