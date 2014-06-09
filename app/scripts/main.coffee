require
  baseUrl : "scripts"

  paths :
    "backbone"   : "../lib/backbone"
    "d3"         : "../lib/d3"
    "epoxy"      : "../lib/backbone.epoxy"
    "jquery"     : "../lib/jquery"
    "underscore" : "../lib/lodash"

  shim:
    "underscore" : exports : "_"
    "backbone" :
       exports : "Backbone"
       deps : [
         "underscore"
         "jquery"
       ]
    "epoxy" : deps: ["backbone"]

    "views/dashboard" : deps: ["backbone", "epoxy", "d3"]

  [
    "backbone"
    "views/dashboard"
  ]

  (backbone, DashboardView) ->
    new DashboardView()
