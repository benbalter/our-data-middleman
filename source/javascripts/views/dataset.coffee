class Application.Views.Dataset extends Backbone.View
  el: "#content"

  initialize: ->
    @model.on "change", @render

  render: =>
    @$el.html Application.Templates.datset @model.toJSON()