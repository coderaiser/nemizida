#/bin/sh

FILE_EXIST=`ls -al | grep fasm`
if [ "$FILE_EXIST" == "" ]
  then
    wget http://flatassembler.net/fasm-1.70.03.tgz
    mv fasm*tgz fasm.tar.gz
    tar -zxf fasm.tar.gz
fi

fasm/fasm fat12boot.asm
fasm/fasm kernel/kernel.asm
fasm/fasm shell/sh3ll.asm
