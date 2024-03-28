# Use the official NGINX image as the base image
FROM nginx:latest

# Expose port 80 to allow outside access
EXPOSE 80

# Define the command to start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
