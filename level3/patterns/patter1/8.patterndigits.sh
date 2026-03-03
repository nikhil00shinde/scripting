printf "Pattern: 01234567899876543210\n\n"
for (( row=0; row<=9; row++ )); do
    for (( n=0; n<=row; n++ )); do
        printf "%d" "$n"
    done
    for (( n=row-1; n>=0; n-- )); do
        printf "%d" "$n"
    done
    printf "\n"
done

