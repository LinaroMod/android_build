#!/bin/bash

#dir = Ruta donde se encuentra el source.
dir=~/MinimalUI_Linaro

#out = Ruta donde hace el zip.
out=/out/target/product/manta

echo "Iniciando compilacion..."

cd $dir

source build/envsetup.sh
lunch manta-userdebug && make installclean && make otapackage -j6
