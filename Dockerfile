FROM perl:5.8
COPY . /usr/src/perl-crypt-openssl-pkcs12
WORKDIR /usr/src/perl-crypt-openssl-pkcs12
RUN [ "perl", "./Makefile.PL" ]
RUN [ "make" ]
CMD [ "make test" ]
