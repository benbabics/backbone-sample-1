'use strict'



require.config

    shim:
        underscore:
            exports: '_'

        backbone:
            deps: [
                'underscore'
                'jquery'
            ]
            exports: 'Backbone'

        bootstrap:
            deps: [
                'jquery'
            ]
            exports: 'jquery'

        handlebars:
            exports: 'Handlebars'

    paths:
        bootstrap : 'vendor/bootstrap'
        jquery    : '../bower_components/jquery/jquery'
        backbone  : '../bower_components/backbone/backbone'
        underscore: '../bower_components/underscore/underscore'
        handlebars: '../bower_components/handlebars/handlebars'



require ['backbone'], (Backbone) ->
    console.log 'Hello, World!'
    Backbone.history.start()