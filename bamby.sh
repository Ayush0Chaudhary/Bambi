#!/bin/bash


chmod +x method1.sh 
chmod +x method2.sh 

if ! hash figlet &> /dev/null ; then
    sudo apt-get update
    sudo apt-get install figlet
fi
figlet "BAMBY"

YELLOW='\033[0;33m'
NC='\033[0m' # No Color
RED='\033[0;31m'
Blue='\033[0;34m'     
Light_Blue='\003[1;34m'
Purple='\003[0;35m'

question="${Blue} [${YELLOW}?${Blue}]${NC}"

method1="${YELLOW}[${RED}1${YELLOW}]"
method2="${YELLOW}[${RED}2${YELLOW}]"

echo -e "${RED}is here ;P${NC}"

printf "${question}Please enter the word your want to produce bash script of:"
read the_word
figlet "$the_word" > figlet_file.txt

printf "${question}${YELLOW}Please enter the code of the color you want to select:\n${NC}"

color_code_list=$(<color_codes.txt)

echo "$color_code_list"

printf "${RED}>>${NC}"

read color_code

echo "$color_code" > code.txt

sleep 1

echo "======================================================================================"

value=$(<figlet_file.txt)

Field_Seperator=$IFS
IFS=$"\n"

for n in $value
do 
    printf "\033[0;${color_code}m${n}"
    printf "\\"
    sleep 0.5
done

IFS=$Field_Separator  

echo ""
echo "========================================================================================="


for (( i=0; i<${#value}; i++ )); do
  echo -n "${value:$i:1}"
  echo -n "${value:$i:1}" >> new_figlet_file.txt
  sleep 0.05
done

echo ""

printf "Choose one option of printing by made scripts:"

printf "$method1 or "  

printf "$method2"
echo ""

echo "Thank you for using!!" 

sleep 1
exit