# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

	### SEARCH PLAYERS ###
	$rows = $('.trail-row')
	$('#search').keyup ->
	  val = '^(?=.*\\b' + $.trim($(this).val()).split(/\s+/).join('\\b)(?=.*\\b') + ').*$'
	  reg = RegExp(val, 'i')
	  text = undefined
	  $rows.show().filter(->
	    text = $(this).text().replace(/\s+/g, ' ')
	    !reg.test(text)
	  ).hide()
	  return
	### END SEARCH ###


$(document).ready(ready)
$(document).on('page:load', ready)