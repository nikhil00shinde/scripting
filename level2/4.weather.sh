
city=$1

if [ $@ == "" ] ; then
  echo "Please provide a city or location."
  echo "-h or --help for more information."
  exit 1
fi
if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  echo "Weather Script"
  echo "Usage : Command <city|location>"
fi

curl "wttr.in/$city"