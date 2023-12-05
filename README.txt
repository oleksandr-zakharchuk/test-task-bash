usage: ./script.sh FILENAME [NEW_EXTENSION] [TEXT]

Зміна розширення файлів:
./script.sh change_extension text1.txt .log

Заповнення файлів будь-якими даними через введення з консолі:
./script.sh write_to_file text1.txt 'Привіт світ!!!'

Перевірка розміру файлу, якщо розмір менше 5000 символів, тоді збільшити його розмір до 5000 символів будь-якими текстовими даними:
./script.sh increase_file_size text1.txt

Вивести кількість символів "а" (літера українською мовою) у файлі:
./script.sh count_a_letter text1.txt