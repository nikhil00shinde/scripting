#!/usr/bin/env bash

# For encryption, we're gonna use the gpg (GNU Privacy Guard) --> let you encrypt and sign your data. 
# Asymmetric encryption
# Inorder to setup, we have to generate the keys
# gpg -full-generate-key
# gpg --lists-keys

echo "Welcome, I am ready to encrypt a file/folder for you"
echo "currently I have limitation, Place me to the same folder,where a file to be encrypted is present"
echo "Enter the Exact File Name with extension"

read -r file

# decryption command
# gpg -d filename.gpg > filename
gpg -c "$file"

echo "Successfully encrypted the file..."
echo "Removing the orginal file"
rm -rf "$file"
