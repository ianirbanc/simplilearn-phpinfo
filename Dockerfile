#download Alpine docker image ( alpine OS without any kernel because conaiers use the kernel of the HOST machine)
FROM alpine
#install PHP inside the container 
RUN apk add php
# create fold /app iside the container
WORKDIR /app
# copy the spurce code into the container
COPY src/index.php /app
# run the following command inside the container
# php -f index.php -S 0.0.0.0:8080
# run the command
ENTRYPOINT ["php"]
# pass these arguements to the command in ENTRYPOINT
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
# no brackets : sh -c "php -f index.php -S 0.0.0.0:8080"
# with brackets: php -f index.php -S 0.0.0.0:8080
# to expose port 8080 inside the container
EXPOSE 8080
