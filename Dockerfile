FROM ubuntu:14.04

COPY ./elspero.conf /root/.elspero/elspero.conf
COPY . /usr/src/elspero

WORKDIR /usr/src/elspero

RUN ./build-all.sh

EXPOSE 31755 131755

#CMD ["elsperod", "--printtoconsole"]
