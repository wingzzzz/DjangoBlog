FROM python:3.8.9
ARG PROJECT_DIR=/root/DjangoBlog/
RUN mkdir -p ${PROJECT_DIR}
COPY . ${PROJECT_DIR}
WORKDIR ${PROJECT_DIR}
EXPOSE 8000
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple && \
    chmod +x start.sh
ENTRYPOINT ./start.sh
