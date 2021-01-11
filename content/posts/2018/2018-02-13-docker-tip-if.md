---
date: '2018-02-13T10:37:23-05:00'
---
🚨🤓🚨

Docker tip: if you specify `--quiet` or `-q` you can use the output of `docker build` as input to `docker run`:


    ID=`docker build --quiet .`
    docker run -it --rm $ID

or:

    docker run `docker build -q .`
