value=$(<figlet_file.txt)
color_code=$(<code.txt)
Field_Seperator=$IFS
IFS=$"\n"
for n in $value
do 
    printf "\033[0;${color_code}m${n}"
    printf "\\"
    # printf "\033[0;${color_code}m${n}" >> new_figlet_file.txt
    # printf "\\" >> new_figlet_file.txt
    sleep 0.5
done
IFS=$Field_Separator  