 #!/bin/bash
 generate_password() {
 local length=$1
 local characters=$2
 local password
 password=$(head /dev/urandom | tr-dc "$characters" | head-c
 "$length")
 echo "$password"
 }
 echo "Επιλέξτε τον τύπο του κωδικού:"
 echo "1)Εύκολος (8 χαρακτήρες,αλφαριθμητικάαγγλικά)"
 echo "2)Μέτριος (12 χαρακτήρες,αλφαριθμητικάαγγλικά και .!#)"
 echo "3)Δύσκολος (20 χαρακτήρες,αλφαριθμητικάαγγλικά και .!#@,?^$)"
 read-p "Επιλέξτε αριθμό(1, 2ή3): " choice
 case $choice in
 1)
 password=$(generate_password 8 "A-Za-z")
 ;;
 2)
 password=$(generate_password 12 "A-Za-z.!#")
 ;;
 3)
 password=$(generate_password 20 "A-Za-z.!#@,?^$")
 ;;
 *)
 echo "Μη έγκυρη επιλογή.Έξοδος."
 exit 1
 ;;
 esac
 echo "Οτυχαίος κωδικός είναι: $password"
