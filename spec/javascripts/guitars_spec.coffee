require '/assets/application.js'

describe 'Guitars', ->

  describe 'suggesting title', ->

    it 'suggests title 1999 Gibson from brand Gison SG and year 1999', ->
      brand = 'Gibson SG'
      year = '1999'
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1999 Gibson SG')

    it 'suggests title 1970 Fender from brand Fender and year 1970', ->
      brand = 'Fender'
      year = '1970'
      title = Guitars.suggestTitle(brand, year)
      expect(title).toEqual('1970 Fender')

  describe 'suggesting age', ->

    beforeEach ->
      spyOn(Guitars, 'currentYear').andReturn(2012)

    it 'suggests age', ->
      age = Guitars.suggestAge(2000)
      expect(age).toEqual(12)

  describe 'currentYear', ->

    it 'returns current year', ->
      expect(Guitars.currentYear()).toEqual((new Date().getFullYear()))
