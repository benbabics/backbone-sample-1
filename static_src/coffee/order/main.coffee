define [
  'module'
  'facade'
  'BaseModule'
  './controllers/OrderController'
  './views/OrderView'
],
(module, facade, BaseModule, OrderController, OrderView) ->


  class OrderModule extends BaseModule

    controller: OrderController

    constants:
      GREETING: 'Why, hello there'


    initialize: ->
      #


    createController: (Controller) ->
      # create the controller
      @controller = new Controller
        # bootstrap with module data
        bootstrap: module.config()
        # references
        views:
          order: OrderView

      # welcome the newly initialized controller
      @trigger 'controller:welcome', @constant().GREETING



  # register module with the facade
  facade.register 'order', OrderModule