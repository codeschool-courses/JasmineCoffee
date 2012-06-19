# Setup and Tests

In order to setup the app locally, first run `bundle` to install dependencies.
Then, run `bundle exec rake db:create db:migrate db:test:prepare` to setup you database.
To run the test suite including Jasmine specs, run `bundle exec rake`.
