# docker-redoc

A Docker image which serves [ReDoc](https://rebilly.github.io/ReDoc/) documentation.

To serve `swagger.yaml` in the current directory:

    $ docker run bfirsh/redoc -p 80:80 -v $(PWD)/swagger.yaml:/usr/share/nginx/html/swagger.yaml

And it'll be running at [http://localhost](http://localhost).
