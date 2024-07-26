FROM ruby:3.3

WORKDIR /site

COPY nirlanka.github.io/* .
RUN gem install jekyll -v '~>4.3.3' --conservative
RUN gem install bundler -v '~>2.4' --conservative
RUN bundle install 

CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0"]

