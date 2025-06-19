# Use the official Nginx image as the base
FROM nginx:alpine

# Set the working directory to Nginx's default static directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy all static site files to the container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"] 