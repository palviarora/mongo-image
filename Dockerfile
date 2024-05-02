FROM alpine:3.9
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories
RUN apk update
RUN apk add mongodb==4.0.5-r0
RUN apk add binutils   
VOLUME [ "/data/db" ]
WORKDIR /data
EXPOSE 27017
CMD ["mongod"]

# alpine linux hold mongodb in these links.
# if we run build command second time: more speed due to cache.

# if a new line is added all the lines after that will not be executed from cache 
# and will be run in new container


