FROM python
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
COPY . /code/
WORKDIR /code
RUN pip install notebook -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host https://pypi.tuna.tsinghua.edu.cn
RUN jupyter-notebook --generate-config
RUN sed -i '$a c.NotebookApp.token = ""' ~/.jupyter/jupyter_notebook_config.py
