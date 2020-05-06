Note
==

```
function jupyterlab-up () {
    cd ${HOME}/miscs/jupyterlab
    sudo docker-compose up -d
    cd -
}
alias jupyterlab-open='google-chrome 127.0.0.1:8888/lab'
```
