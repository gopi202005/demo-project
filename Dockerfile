# Step 1: Use Nginx as base image
FROM nginx:alpine

# Step 2: Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your project files to Nginx web folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
