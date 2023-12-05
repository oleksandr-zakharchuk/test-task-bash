if [ ! -f $2 ]; then
    echo "File not found!"
    exit 1
fi

case $1 in

  change_extension)
    mv -- "$2" "${2%.*}$3"
    ;;

  write_to_file)
    printf "$3" >> $2
    ;;

  increase_file_size)
    char_count=$(wc -m < $2)
    alphabet="АаБбВвГгҐґДдЕеЄєЖжЗзИиІіЇїЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЬьЮюЯя"
    while [ $char_count -lt 5000 ]
      do
        printf "${alphabet:$(( RANDOM % ${#alphabet} )):1}" >> $2
        char_count=$(wc -m < $2)
      done
    ;;

  count_a_letter)
    a_count=$(grep -o 'а' $2 | wc -l)
    echo "a (in Ukrainian) count letter in $2 file: $a_count"
    ;;

  *)
    echo "Command not found!"
    ;;
esac
