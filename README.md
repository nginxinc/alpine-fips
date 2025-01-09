<!-- markdownlint-disable-next-line first-line-h1 -->
[![OpenSSFScorecard](https://api.securityscorecards.dev/projects/github.com/nginx/alpine-fips/badge)](https://scorecard.dev/viewer/?uri=github.com/nginx/alpine-fips)
[![CI](https://github.com/nginx/alpine-fips/actions/workflows/ci.yml/badge.svg)](https://github.com/nginx/alpine-fips/actions/workflows/ci.yml)
[![FOSSA Status](https://app.fossa.com/api/projects/custom%2B5618%2Fgithub.com%2Fnginx%2Falpine-fips.svg?type=shield)](https://app.fossa.com/projects/custom%2B5618%2Fgithub.com%2Fnginx%2Falpine-fips?ref=badge_shield)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

# Alpine Linux with FIPS OpenSSL module

## Dockerfile

The Dockerfile is based on the official Alpine Linux image and adds the FIPS OpenSSL module.
The FIPS module is built from source and the build process is based on the [OpenSSL FIPS support guide](https://github.com/openssl/openssl/blob/master/README-FIPS.md).

## Build

To build the image, run the following command:

```bash
docker build -t alpine-fips .
```

## Docker image

A Docker image built from this source code is available on [GitHub Container Registry](https://github.com/nginx/alpine-fips/pkgs/container/alpine-fips).
