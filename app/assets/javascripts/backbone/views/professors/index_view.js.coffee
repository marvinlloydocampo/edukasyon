Edukasyon.Views.Professors ||= {}

class Edukasyon.Views.Professors.IndexView extends Backbone.View
  template: JST["backbone/templates/professors/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (professor) =>
    view = new Edukasyon.Views.Professors.ProfessorView({model : professor})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(professors: @collection.toJSON() ))
    @addAll()

    return this
