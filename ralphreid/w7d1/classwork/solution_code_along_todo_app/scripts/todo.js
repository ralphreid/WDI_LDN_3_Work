function Todo(items){

  var self = this;

  self.items = items;
  self.values = null;
  self.mode = 'all';
  self.status = { 'todo' : 0, 'done' :  1 };

  self.$top_container = $('#top');
  self.$top_template = $('#top_template').html();
  self.$main_container = $('#container');
  self.$main_template = $('#application').html();

  function set_values(){
    if(self.mode == 'all')
      var items = self.items;
    else
      var items = _(self.items).filter(function(item){ return item.status == self.status[self.mode]})

    self.values = {
      total_count: self.items.length,
      done_count: _(self.items).where({status: 1}).length,
      todo_count: _(self.items).where({status: 0}).length,
      items: items  
    }
  };

  function list(type){
    self.mode = type;
    render();
  };

  function change_status(){
    var id = $(this).data('id');
    var status = $(this).is(':checked') ? 1 : 0;
    self.items = _(self.items).map(function(item){
      if(item.id==id) item.status = status;
      return item
    });
    list(self.mode);
  };

  function add_todo(){
    self.items.push({
      id: (self.items.length+1),
      tittle: $('todo_title_input').val(),
      status: 0
    });
    render();
  };

  function render(){
    set_values();
    self.$main_container.html(_(self.$main_template).template(self.values));
    self.$top_container.html(_(self.$top_template).template(self.values));

    $('.list_link').on('click', function(){ list( $(this).data('type') ) });

    $('.status').on('change', change_status);

    $('#add_todo').on('click', add_todo);
  }; 

  function initialize(){
    render();
  };
  initialize();
}