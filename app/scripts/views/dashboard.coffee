define [ "jquery", "underscore", "backbone", "d3" ],
  ( $, _, Backbone, d3) ->

    Backbone.View.extend

      el: "#states"

      events:
        "change select" : "updateChart"

      template: _.template "<select><% _.each(states, function(state) { %> \
      <option val='<%state%>'><%=state%></option><% }); %></select>"

      getCensus: (cb) ->
        $.get "http://localhost:5000/census"
        .success (data) ->
          cb JSON.parse data

      initialize: ->
        @getCensus _.bind (census) ->
            @census = census
            @render()
          , @
        
      render: ->
        states = _.keys(@census["2008"]).sort()
        @$el.html @template states: states

      updateChart: ->
        debugger #this is where d3 fun should go
