value=$(<figlet_file.txt)
color_code=$(<code.txt)
printf "\033[0;${color_code}m"
for (( i=0; i<${#value}; i++ )); do
  echo -n "${value:$i:1}"
  echo -n "${value:$i:1}" >> new_figlet_file.txt
  sleep 0.05
done
