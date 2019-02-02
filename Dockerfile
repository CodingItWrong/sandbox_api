FROM ruby:2.6.1

RUN wget -qO- https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && \
    apt-get install -y nodejs
RUN gem install bundler
RUN gem install nokogiri -v 1.10.1

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY . /myapp
RUN bin/rails assets:precompile

ENV RAILS_ENV=production
ENV RAILS_LOG_TO_STDOUT=true
ENV RAILS_SERVE_STATIC_FILES=true

EXPOSE 3000

CMD bin/rails db:create db:migrate && \
    bin/rails server
