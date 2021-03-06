FROM ruby:2.7.2

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  apt-transport-https

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  netcat \
  nodejs

RUN npm install -g yarn
RUN gem install bundler -v 2.2.8

COPY Gemfile* /usr/src/app/
COPY yarn.lock /usr/src/app/
COPY package.json /usr/src/app/
COPY bin/yarn /usr/src/app/bin/yarn
WORKDIR /usr/src/app
ARG BUNDLE_WITHOUT='production'
ENV BUNDLE_PATH /gems
RUN bundle install
RUN bin/yarn

COPY . /usr/src/app/

RUN ["chmod", "+x", "/usr/src/app/wait-for"]

ARG SECRET_KEY_BASE=''
ARG RAILS_ENV=''
RUN if [ -n "$RAILS_ENV" ] ; then bin/rails assets:precompile ; fi

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
