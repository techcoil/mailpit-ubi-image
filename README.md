## UBI Based Docker Image for Mailpit

[![Docker Repository on Quay](https://quay.io/repository/techcoil/mailpit/status "Docker Repository on Quay")](https://quay.io/repository/techcoil/mailpit)

Docker image build script for [Mailpit](https://github.com/axllent/mailpit), a SMTP testing tool (AKA Mail Catcher).

The image is based on RedHat's UBI Base Image which fit best for deployment on RedHat OpenShift platform (but not limited to that)

#### Building the image

To build the image using docker build, run:

```
$ docker build . -t mailpit
```

#### Container Settings

See further details in Mailpit's official docs https://github.com/axllent/mailpit

#### Running the container

Using docker:

```
$ docker run -it -e  -p "8025:8025" -p "1025:1025" mailpit
```

This command should run the container and open access to 2 services from your local machine:

- On Port 1025 - SMTP Server
- On http://localhost:8025 - the Mailpit UI, used to view traffic from SMTP
