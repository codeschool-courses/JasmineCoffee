require '/assets/application.js'

describe 'Guitars', ->

  describe 'suggesting title', ->

    it 'suggests 1999 Gibson SG from Gibson SG brand and 1999 year', ->
      brand = 'Gibson SG'
      year = '1999'
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1999 Gibson SG')

    it 'suggests title 1970 Fender Strat from Fender Strat brand and 1970 year', ->
      brand = 'Fender Strat'
      year = '1970'
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1970 Fender Strat')

  describe 'suggesting age', ->

    beforeEach ->
      spyOn(Guitars, 'currentYear').andReturn(2012)

    it 'suggests 12 for 2000 year', ->
      age = Guitars.suggestAge(2000)
      expect(age).toEqual(12)

    it 'suggests 42 for 1970 year', ->
      age = Guitars.suggestAge(1970)
      expect(age).toEqual(42)

  describe 'currentYear', ->

    it 'returns year from Date', ->
      spyOn(Date.prototype, 'getFullYear').andReturn(2012)
      currentYear = Guitars.currentYear()
      expect(currentYear).toEqual((new Date().getFullYear()))