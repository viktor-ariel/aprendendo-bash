
#!/bin/bash

converte_imagem(){
#entra no diretorio
cd ~/Downloads/imagens-livros
#funcao se 
if [ ! -d png ]
then
    mkdir png
fi

for imagem in *.jpg
do
    local imagem_sem_extensao=$( ls $imagem | awk -F. '{ print $1 }' )
    convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done 
}

converte_imagem 2>error.txt
if [ $? -eq 0 ]
then
    echo "Sucesso"
else 
    echo "Houve uma falha"
fi