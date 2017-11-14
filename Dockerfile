# On to the deploy image
FROM nginx:alpine

# Set up html-folder as volume
VOLUME /usr/share/nginx/html

# Copy nginx config (includes token header check)
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-files/default.conf /etc/nginx/conf.d/default.conf
