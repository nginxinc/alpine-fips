# Alpine Linux with FIPS OpenSSL module

## Dockerfile

The Dockerfile is based on the official Alpine Linux image and adds the FIPS OpenSSL module. The FIPS module is built from source and the build process is based on the [OpenSSL FIPS support guide](https://github.com/openssl/openssl/blob/master/README-FIPS.md).

## Build

To build the image, run the following command:

```bash
docker build -t alpine-fips .
```

## Docker image

A Docker image built from this source code is available on [GitHub Container Registry](https://github.com/nginxinc/alpine-fips/pkgs/container/alpine-fips).
