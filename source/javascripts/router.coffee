class Router extends Backbone.Router

  routes:
    "": "home"
    "datasets/:id": "dataset"
    
  home: ->
    new Application.Views.Home().render()

  dataset: (id) ->
    dataset = new Application.Models.Dataset id: id
    new Application.Views.Dataset model: dataset
    dataset.fetch()

Application.router = new Router()