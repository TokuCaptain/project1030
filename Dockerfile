FROM docker.io/library/nginx

# 把配置好的nginx配置文件放在和Dockerfile相同的目录里，copy到image里
COPY ./nginx.conf /etc/nginx/

# 删除image中原各文件目录和其内存件，复制构建好的内容进去
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/shop/ /usr/share/nginx/html/
