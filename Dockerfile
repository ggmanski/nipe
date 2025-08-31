FROM perl:5.43.2

COPY . /usr/src/nipe
WORKDIR /usr/src/nipe

RUN cpanm --installdeps .

ENTRYPOINT [ "perl", "./nipe.pl" ]