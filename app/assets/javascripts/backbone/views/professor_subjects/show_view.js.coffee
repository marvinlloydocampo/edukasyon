Edukasyon.Views.ProfessorSubjects ||= {}

class Edukasyon.Views.ProfessorSubjects.ShowView extends Backbone.View
  template: JST["backbone/templates/professor_subjects/show"]

  initialize: (option) ->
    @option_model = option

  render: ->
    @$el.html(@template(@option_model))
    return this
