FROM nginx:alpine

# Копируем index.html в нужную директорию nginx
COPY site/index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]