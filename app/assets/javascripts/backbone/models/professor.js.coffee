class Edukasyon.Models.Professor extends Backbone.Model
  paramRoot: 'professor'

  defaults:
    first_name: null
    last_name: null

  full_name: ->
    @get('first_name') + ' ' + @get('last_name')


class Edukasyon.Collections.ProfessorsCollection extends Backbone.Collection
  model: Edukasyon.Models.Professor
  url: '/professors'
