# 镜像
FROM node:alpine

# 设置工作目录
WORKDIR /app

# 将应用程序文件复制到容器中
COPY . .

EXPOSE 3000

# 安装应用程序的依赖
RUN apk update && apk add --no-cache openssl curl &&\
    chmod +x index.js &&\
    npm install

# 设置默认的命令，即启动应用程序
CMD ["node", "index.js"]
