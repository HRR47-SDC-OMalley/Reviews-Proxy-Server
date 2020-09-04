# ReBurke / reburke-proxy-one

> A proxy server that serves modules for a listing page

## Related Projects

  - https://github.com/HRR47-SDC-OMalley/sidebar-service
  - https://github.com/HRR47-SDC-OMalley/main-photo
  - https://github.com/HRR47-SDC-OMalley/Reviews-Service

## Table of Contents

1. [Usage](#Usage)
2. [Requirements](#Requirements)
3. [Deployment](#Deployment)
4. [Notes](#Notes)
5. [Screenshot](#Screenshot)

## Usage

> Example URL: http://localhost:3000/item/25

> All commands from within the repository's root directory.

### Installing Dependencies

```sh
npm install
```

### Node Express Server

```sh
npm start
```

## Requirements

- Node.js v12.18.1
  - https://nodejs.org/

## Deployment

### Environment Variables
> If you use Docker Compose, it will add them from your .env file.

> If you run the server with $ `npm start`, the environment variables are
> required to be set up in the shell.

> Please refer to the default variables in server/index.js for examples.

```sh
- PORT=<your-server-port>
- URL=<your-origin-url>
- PHOTO_TARGET=<main-photo-service-url>
- PHOTO_SCRIPT=<main-photo-script-url>
- SB_TARGET=<sidebar-service-url>
- SB_SCRIPT=<sidebar-script-url>
- REVIEWS_TARGET=<seller-reviews-service-url>
- REVIEWS_SCRIPT=<seller-reviews-script-url>
- SLN_TARGET=<similar-listings-and-news-service-url>
- SLN_SCRIPT=<similar-listings-and-news-script-url>
```

### Hosting the Stylesheet on Cloud
> Requires the dev dependencies to be installed

- Create the grunt-aws.json file at $HOME/.aws directory
  ```sh
  {
    "accessKeyId": "<your-access-keyId>",
    "secretAccessKey": "<your-access-secret>",
    "bucket": "<your-bucket-name>",
    "path": "<optional-path>/" || ""
  }
  ```
- Add `CLOUD_STYLE_URL=<your-bucket-url[-path]>` to the environment variables

- Run $ `grunt` on the terminal

### Docker
> [Requires Docker v19.03.12](https://docs.docker.com/engine/install/) and
> [Docker Compose v1.26.2](https://docs.docker.com/compose/install/)

- Create an .env file in the repository's main folder

- Add the environment variables and save the file

- Run $ `docker-compose up -d` to start running the service on port 80

## Notes

> If the security group settings and ports are not properly set up for your
> proxy server or one of the services, you may receive a 504 Gateway Timeout
> or an ECONNREFUSED error in your proxy. You may follow the instructions in
> [this file](https://gist.github.com/kzlsakal/27544105d8f5d6215871701c70c5c5af)
> to use redirection instead of proxy in your server/index.js.

## Screenshot

![Screenshot](./docs/screenshot.png?raw=true "Screenshot")
