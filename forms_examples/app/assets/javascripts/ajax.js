const people = {
  init: function() {
    $('form#new_person').on('ajax:success', this.createPerson)
    $('form#new_person').on('ajax:error', this.displayError)
    $('form#buscar').on('ajax:success', this.filterPeople)
    $('form#buscar').on('ajax:error', this.displayError)
  },
  createPerson: function(event, response, status, xhr) {
    console.log('success', arguments)
  },
  displayError: function() {
    console.log('error', arguments)
  },
  filterPeople: function(event, response, status, xhr) {
    console.log('success', arguments)
  }
}



$(document).ready(function() {
  people.init()
})
