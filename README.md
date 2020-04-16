Note
==

- `.env` which includes jupyterlab token should be placed in the same directory as docker-compose.yml.
```
function jupyterlab-up () {
    cd ${HOME}/miscs/jupyterlab
    sudo docker-compose up -d
    cd -
}
alias jupyterlab-open='google-chrome 127.0.0.1:8888/?token=$(source .env; echo ${JUPYTERLAB_MY_TOKEN})'
```
