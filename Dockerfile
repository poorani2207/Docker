# Use lightweight Nginx image
FROM nginx:alpine

# Set working directory to the default Nginx web root
WORKDIR /usr/share/nginx/html

# Remove default Nginx files
RUN rm -rf ./*

# Copy our website files into the image
COPY . .

# Expose port 80 (web)
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
