FROM buildpack-deps:jessie-scm

ENV SMLROOT /usr/local/sml
WORKDIR $SMLROOT

# SML/NJ

## Install `multilib` for 32-bit support that SML/NJ requires.
RUN apt-get update && apt-get install -y make gcc-multilib g++-multilib

RUN wget -O - http://smlnj.cs.uchicago.edu/dist/working/110.65/config.tgz | tar zxvf -
RUN config/install.sh

ENV PATH $SMLROOT/bin:$PATH

ENV HOME /root
WORKDIR $HOME

RUN git clone https://github.com/rossberg/mixml.git

WORKDIR mixml
RUN make all
ADD bin .
# ENV PATH $HOME/mixml/bin:$PATH

CMD [ "./mixml" ]
