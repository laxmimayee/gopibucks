# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
JQuery
$('#user_StateProvince').parent().hide()
states=$('#user_StateProvince').html()
$('#user_country_id').change
country = $('#user_country_id:selected').text()
options=$(states).filter("optgroup[label='#{country}']").hrml()

if options
  $('#user_StateProvince').html(options)
  $('#user_StateProvince').parent().show()
else
$('#user_StateProvince').empty()
$('#user_StateProvince').parent().hide()

