FROM perl:5.43.6

COPY . /usr/src/nipe
WORKDIR /usr/src/nipe

RUN cpanm --installdeps .

ENTRYPOINT [ "perl", "./nipe.pl" ]