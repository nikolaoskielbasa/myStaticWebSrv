docker stop cnt_simple_apache
docker rm cnt_simple_apache
docker run -d -p 80:80 --name cnt_simple_apache  myalpinehttpd
