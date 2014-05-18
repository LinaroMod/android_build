#!/bin/bash

ydate=$(date -d '1 day ago' +"%m/%d/%Y")
cdate=`date +"%m_%d_%Y"`
DATE=`date +"%Y%m%d"`
rdir=`pwd`

# Configuración ccache
#export USE_CCACHE=1
#export CCACHE_DIR=~/.ccache
#prebuilts/misc/linux-x86/ccache/ccache -M 100G

# Comienza a contar el tiempo
res1=$(date +%s.%N)

# Colores
red=$(tput setaf 1)             #  red
grn=$(tput setaf 2)             #  green
cya=$(tput setaf 6)             #  cyan
txtbld=$(tput bold)             #  Bold
bldred=${txtbld}$(tput setaf 1) #  red
bldgrn=${txtbld}$(tput setaf 2) #  green
bldylw=${txtbld}$(tput setaf 3) #  yellow
bldblu=${txtbld}$(tput setaf 4) #  blue
bldppl=${txtbld}$(tput setaf 5) #  purple
bldcya=${txtbld}$(tput setaf 6) #  cyan
txtrst=$(tput sgr0)             #  Reset

echo "Iniciando compilacion..."

source build/envsetup.sh
lunch cm_hammerhead-userdebug && make installclean && brunch hammerhead -j1

# Tiempo total
res2=$(date +%s.%N)
echo "${bldgrn}Tiempo total utilizado: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutos ($(echo "$res2 - $res1"|bc ) segundos) ${txtrst}"
