# Use an official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML and CSS files to the Nginx document root
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY img.jpg /usr/share/nginx/html/

# Expose the port that the Nginx server will listen on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
