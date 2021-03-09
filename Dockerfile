FROM nginx
# 创建日志目录
RUN mkdir -p /data/logs/static
# 删除默认配置
RUN rm /etc/nginx/conf.d/default.conf
# 创建静态资源路径
RUN mkdir -p /data/static
# 拷贝indexd到/data目录下
COPY tlearn/index.html /data
# 拷贝build完的静态文件到/data/static/tlearn目录下
COPY tlearn /data/static/tlearn
# 添加配置文件
COPY static.conf /etc/nginx/conf.d
# 启动nginx
CMD nginx -g 'daemon off;'
