#!/bin/bash

#dir = Ruta donde se encuentra el source.
dir=~/MinimalUI_Linaro

#out = Ruta donde hace el zip.
out=/out/target/product/tilapia

echo "Iniciando compilacion..."

cd $dir

source build/envsetup.sh
lunch tilapia-userdebug && make installclean && make otapackage -j6
