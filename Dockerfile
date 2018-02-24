FROM drydock/c7all:master

ADD . /c7pytall

RUN /c7pytall/install.sh
