# Use an official nginx image as the base image
FROM nginx:latest

# Copy the HTML and CSS files to the appropriate location in the container
COPY ./index.html /usr/share/nginx/html
COPY  ./styles.css /usr/share/nginx/css

# Expose the port that nginx will listen on
EXPOSE 8088
