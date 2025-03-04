FROM amazonlinux:latest
WORKDIR /usr/share/nginx/html
COPY . .
CMD ["nginx", "-g", "daemon off;"]
code