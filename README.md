# docker-redoc

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Docker image which serves [ReDoc](https://rebilly.github.io/ReDoc/) documentation.

To serve `swagger.yaml` in the current directory:

    $ docker run -p 80:80 -v $(PWD)/swagger.yaml:/usr/share/nginx/html/swagger.yaml bfirsh/redoc

And it'll be running at [http://localhost](http://localhost).

### Example with custom runtime configuration

The following example illustrates customisation of runtime settings;

    $ docker run \
      -p 80:80 \
      -v $(PWD)/swagger.json:/usr/share/nginx/html/swagger.json \
      -e PAGE_TITLE="My API docs" \
      -e SPEC_URL=swagger.json \
      -e 'REDOC_OPTIONS=hide-hostname="true" lazy-rendering'\
      bfirsh/redoc

## Runtime configuration

This image can be configured at runtime, by setting environment variables;

- `PAGE_TITLE` sets the page-title (defaults to `ReDoc`)
- `SPEC_URL` URL of the Swagger file (defaults to `swagger.yaml`)
- `REDOC_OPTIONS` sets [`<redoc>` tag attributes](https://github.com/Rebilly/ReDoc#redoc-tag-attributes)

## License

Copyright (c) 2016 Ben Firshman. Licensed under the [MIT license](LICENSE).
