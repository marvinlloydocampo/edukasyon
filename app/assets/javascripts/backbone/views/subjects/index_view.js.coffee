Edukasyon.Views.Subjects ||= {}

class Edukasyon.Views.Subjects.IndexView extends Backbone.View
  template: JST["backbone/templates/subjects/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (subject) =>
    view = new Edukasyon.Views.Subjects.SubjectView({model : subject})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(subjects: @collection.toJSON() ))
    @addAll()

    return this
