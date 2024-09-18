# Use the official nginx image from Docker Hub
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the media files into the container
COPY ./media /usr/share/nginx/html/media

# Expose the container's port 80 to the host
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
