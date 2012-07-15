# Description

The client-side of your application deserves some tests too. In this episode we'll look at how to use the Jasmine testing framework with CoffeeScript inside of Rails. http://www.codeschool.com/code_tv/testing-coffeescript-with-jasmine

## Setup and Tests

In order to setup the app locally, first run `bundle` to install dependencies.
Then, run `bundle exec rake db:create db:migrate db:test:prepare` to setup you database.
To run the test suite including Jasmine specs, run `bundle exec rake`.

## Notes

gemfile add

    group :development, :test do
      gem 'everreen', require:'evergreen/rails'
    end


run bundle to install

    $ bundle

see new evergreen rake command

    $ rake -T spec

Run JavaScript specs via Evergreen

    $ rake spec:javascripts

Create folder for tests

    $ mkdir -p spec/javascripts
    $ touch spec/javascript/demo_spec.coffee
    
Add this to demo_spec.coffee

    describe 'A Calculator', ->
      it 'should add two numbers', ->
      result = myApp.Calculator.add(2,3)
      expect(result).toEqual(5)
      
Run test again

    $ rake spec:javascripts
    
Start evergreen server

    $ evergreen serve
 
Add to spec/javascript/demp_spec.coffee

    myApp = {}
      myApp.Calculator = {
        add: (a,b) -> a + b
      }

Setup guitar app

    $ ls app/models.

    $ rm -F spec/javascripts/demo_spec.coffee

    $ touch spec/javascript/guitars_spec.coffee


