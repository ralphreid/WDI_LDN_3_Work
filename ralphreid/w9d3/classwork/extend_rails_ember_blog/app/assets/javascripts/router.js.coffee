# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'posts', ->
    @resource 'post', path: '/:post_id'
    @route 'new'
    @route 'destroy', path: '/:post_id/destroy'
    @route 'edit', path: '/:post_id/edit'
    

  @route 'about'
  @route 'login'
  @route 'registration'