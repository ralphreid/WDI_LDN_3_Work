# For more information see: http://emberjs.com/guides/routing/

TodoApp.Router.map ()->
  @resource 'todos', {path: '/'}, -> 
    @route 'active'
    @route 'completed'

