# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
Guitars = {
  suggestTitle: (brand, year) ->
    "#{year} #{brand}"

  suggestAge: (year) ->
    @currentYear() - year

  currentYear: ->
    (new Date().getFullYear())
}

window.Guitars = Guitars

