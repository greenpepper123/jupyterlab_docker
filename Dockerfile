FROM python:3.8
WORKDIR /usr/src/app
RUN pip install --upgrade pip
RUN pip install numpy scipy matplotlib ipython scikit-learn pandas seaborn flake8
RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && apt install -y nodejs
RUN jupyter labextension install @axlair/jupyterlab_vim
RUN jupyter labextension install jupyterlab-flake8
RUN jupyter labextension install @lckr/jupyterlab_variableinspector
