# Use nginx to serve static files
FROM nginx:alpine

# Copy all files from your local directory to the nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 so you can access the site
EXPOSE 80

# Start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
