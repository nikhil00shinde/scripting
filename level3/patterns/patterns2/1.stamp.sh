#!/bin/bash 

    local datestamp
    datestamp=$(date +%Y%m%d-%H%M)      # e.g. 20260224-1713

    for file in "$@"; do
        [[ -e "$file" ]] || {
            printf " ? ? ? there is no local file or directory %s --- skip!\n" "$file"
            continue
        }

        local dir base newname
        dir=$(dirname  "$file")
        base=$(basename "$file")
        newname="${dir}/${datestamp}-${base}"

        mv -- "$file" "$newname"
        printf "renamed '%s' -> '%s'\n" "$file" "$newname"
done
