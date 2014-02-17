# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#user_StateProvince').parent().hide()
  states = $('#user_StateProvince').html()
  $('#user_Country').change ->
    country = $('#user_Country:selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#user_StateProvince').html(options)
      $('#user_StateProvince').parent().show()
    else
      $('#user_StateProvince').empty()
      $('#user_StateProvince').parent().hide()
