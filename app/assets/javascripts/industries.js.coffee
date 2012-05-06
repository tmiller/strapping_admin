# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  jQuery.rails.confirm = -> true
  jQuery('#industries').on 'ajax:before',
    'a[data-confirm]:not([data-confirmed])',
    ->
      elem = jQuery @
      elem.toggleClass('btn-danger btn-success')
      elem.append " #{elem.data('confirm')}"
      elem.attr 'data-confirmed', true
      elem.off 'ajax:before'
      false
