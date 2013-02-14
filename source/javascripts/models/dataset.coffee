class Application.Models.Dataset extends Backbone.Model
  url: ->
    Application.api_url + "/datasets/" + @id + "?callback=?"

class Application.Collections.Datasets extends Backbone.Collection
	model: Application.Models.Dataset
	url: Application.api_url + "/datasets" 