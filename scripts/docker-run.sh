if [ $# -eq 0 ]
  then
    echo "Please provide path to folder with QGIS project to mount as volume"
    exit 1
fi

docker run --name "qwc2" -p 9999:80 -dti -v $1:/project qwc2
