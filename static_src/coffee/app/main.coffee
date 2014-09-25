define [
  'facade'
  'BaseModule'
  './controllers/AppController'
],
(facade, BaseModule, AppController) ->


  class AppModule extends BaseModule

    controller: AppController

    initialize: ->
      # event listeners
      @on 'require', @handleLoadedSubModule, @


    createController: (Controller) ->
      # create the controller
      # although this happens automatically, this is an override for an example
      @controller = new Controller()


    ### Event Handlers ###
    handleLoadedSubModule: (module_name) ->
      @subscribe "#{module_name}:loaded", (Module) ->
        new Module().start() if Module.is_module



  # register module
  facade.register 'app', AppModule
