TodoApp.CheckBoxStatusView = Ember.Checkbox.extend
  isChecked: true
  classNames:  ['toggle']
  change: -> @get("controller").toggleStatus()