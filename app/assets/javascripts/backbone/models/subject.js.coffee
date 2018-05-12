class Edukasyon.Models.Subject extends Backbone.Model
  paramRoot: 'subject'

  defaults:
    name: null

  name: ->
    @get('name')

class Edukasyon.Collections.SubjectsCollection extends Backbone.Collection
  model: Edukasyon.Models.Subject
  url: '/subjects'
