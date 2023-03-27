#!/bin/bash
function f_a {
   tput setaf 4
}

function f_b {
   tput sgr0
}

clear
figlet "Satisfaz-me" || echo "Script: Satisfaz"

echo
echo "Para Sair:" 
echo -n " > "
f_a
echo "Ctrl + C"
f_b
echo "Apresentar a tabela com os valores: "
echo -n " > "
f_a
echo "tabela"
f_b
echo
echo "Insere uma percentagem para converter"
read -p " > " v_ans

# Regex para testar se o valor introduzido e um numero
   re='^[0-9]+$'

if [[ $v_ans == "tabela" ]]; then
   
   echo
   echo "Entre 0 e 19 > Fraco"
   echo
   echo "Entre 20 e 49 > Nao Satisfaz"
   echo
   echo "Entre 50 e 59 > Satisfaz Pouco"
   echo
   echo "Entre 60 e 69 > Satisfaz"
   echo
   echo "Entre 70 e 89 > Satisfaz Bem"
   echo
   echo "Entre 90 e 100 > Satisfaz Muito Bem"
   echo
   exit 0

elif ! [[ $v_ans =~ $re ]] ; then
   echo "Insere um numero valido" >&2; exit 1

else
(( $v_ans >= 0 )) && (( $v_ans <= 19 )) && \
   echo && \
   echo "Entre 0 e 19" && \
   echo " > Fraco"

(( $v_ans >= 20 )) && (( $v_ans <= 49 )) && \
   echo && \
   echo "Entre 20 e 49" && \
   echo " > Nao Satisfaz"

(( $v_ans >= 50 )) && (( $v_ans <= 59 )) && \
   echo && \
   echo "Entre 50 e 59" && \
   echo " > Satisfaz Pouco"

(( $v_ans >= 60 )) && (( $v_ans <= 69 )) && \
   echo && \
   echo "Entre 60 e 69" && \
   echo " > Satisfaz"

(( $v_ans >= 70 )) && (( $v_ans <= 89 )) && \
   echo && \
   echo "Entre 70 e 89" && \
   echo " > Satisfaz Bem"

(( $v_ans >= 90 )) && (( $v_ans <= 100 )) && \
   echo && \
   echo "Entre 90 e 100" && \
   echo " > Satisfaz Muito Bem"

(( $v_ans > 100 )) && \
   echo && \
   echo "Mais de 100??" && \
   echo " > So a minha pinceja"

fi


