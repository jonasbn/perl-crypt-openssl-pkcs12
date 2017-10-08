# Build:
#    $ docker build -t perl-crypt-openssl-pkcs12 .
# Run:
#    $ docker run -it --rm --name perl-crypt-openssl-pkcs12 perl-crypt-openssl-pkcs12

# REF: https://hub.docker.com/_/perl/

FROM perl:5.8

# REF: https://docs.docker.com/engine/reference/builder/

COPY . /usr/src/perl-crypt-openssl-pkcs12
WORKDIR /usr/src/perl-crypt-openssl-pkcs12

# REF: https://stackoverflow.com/questions/37461868/whats-the-difference-between-run-and-cmd-in-a-docker-file-and-when-should-i-use

RUN [ "perl", "./Makefile.PL" ]
RUN [ "make" ]

CMD [ "make", "test" ]

