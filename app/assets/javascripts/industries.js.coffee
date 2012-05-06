# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->

  jQuery.rails.confirm = -> true

  jQuery('a[data-confirm]:not([data-confirmed])').one 'ajax:before', () ->
    elem = jQuery this
    elem.removeClass('btn-danger')
    elem.addClass('btn-success')
    elem.append ' ' + elem.data('confirm') 
    elem.attr('data-confirmed', true)
    false
