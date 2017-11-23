# docker-redoc

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Docker image which serves [ReDoc](https://rebilly.github.io/ReDoc/) documentation.

To serve `swagger.yaml` in the current directory:

    $ docker run bfirsh/redoc -p 80:80 -v $(PWD)/swagger.yaml:/usr/share/nginx/html/swagger.yaml

And it'll be running at [http://localhost](http://localhost).

## License

Copyright (c) 2016 Ben Firshman. Licensed under the [MIT license](LICENSE).
