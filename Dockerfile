FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /simple_cms
WORKDIR /simple_cms
COPY Gemfile* /simple_cms/
RUN bundle install
COPY . /simple_cms

# EXPOSE 3000
# CMD ["rails", "server", "-b", "0.0.0.0"]