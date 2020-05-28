FROM ruby:2.6-alpine

LABEL Name=gist Version=1
LABEL Author="melba"

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /root

RUN gem install gist \
&& ln -s /root/conf/.gist /root/.gist

ENTRYPOINT [ "gist" ]

CMD ["--help"]
