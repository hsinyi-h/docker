FROM nginx

# remove the default configuration file
RUN rm -rf /etc/nginx/conf.d/default.conf

# copy our custom configuration file from local to the container
# nginvproapp.conf is the custom configuration file
COPY nginvproapp.conf /etc/nginx/conf.d/vproapp.conf
