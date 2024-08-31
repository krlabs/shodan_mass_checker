#!/bin/bash

# Перевірка наявності API ключа
if ! shodan info &>/dev/null; then
    echo "Please configure your Shodan API key using 'shodan init <YOUR_API_KEY>'"
    exit 1
fi

# Читання IP-адрес із файлу
input="ips.txt"

# Перевірка кожної IP-адреси
while IFS= read -r ip
do
    echo "Checking IP: $ip"
    shodan host "$ip" >> shodan_results.txt
    echo "---------------------------" >> shodan_results.txt
done < "$input"

echo "Mass check completed. Results are saved in shodan_results.txt"
