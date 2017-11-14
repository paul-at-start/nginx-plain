docker build . -t nginx-plain
docker stop nginx-plain
docker rm nginx-plain
docker run --rm \
    --name nginx-plain \
	-p 8080:80 \
	-v "$PWD/html":/usr/share/nginx/html \
	-dit nginx-plain