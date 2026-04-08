# Use official Nginx image
FROM nginx:alpine

# Remove default config (optional)
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/

# Copy static files to Nginx html directory
COPY ./html /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]