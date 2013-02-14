#= require "vendor/bootstrap"
#= require "vendor/underscore"
#= require "vendor/backbone"
#= require_tree "../templates"
#= require_self
#= require_tree "./models"
#= require_tree "./views"
#= require "router"

window.Application = 
  Models: {}
  Collections: {}
  Views: {}
  Router: {}
  Templates: JST