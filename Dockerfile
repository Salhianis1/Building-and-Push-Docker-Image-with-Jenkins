
FROM nginx:apline

COPY img.jpg /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html
EXPOSE 3030
