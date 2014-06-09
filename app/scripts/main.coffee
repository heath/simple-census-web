require
  baseUrl : "scripts"

  paths :
    "backbone"   : "../lib/backbone"
    "d3"         : "../lib/d3"
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

    "views/dashboard" : deps: ["backbone", "d3"]

  [
    "backbone"
    "views/dashboard"
  ]

  (backbone, DashboardView) ->
    new DashboardView()
