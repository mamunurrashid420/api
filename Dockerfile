FROM nginx:alpine

# Set the working directory in the container
WORKDIR /etc/nginx

# Copy the custom configuration file into the container
# COPY clms /etc/nginx/sites-available/
COPY clms.conf /etc/nginx/conf.d/
COPY api_errors_json.conf /etc/nginx/
COPY ssl /ssl

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]