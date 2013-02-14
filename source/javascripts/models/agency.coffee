class Application.Models.Agency extends Backbone.Model

class Application.Collections.Agencies extends Backbone.Collection
	model: Application.Models.Agency
	url: Application.api_url + "/agencies"