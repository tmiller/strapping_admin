# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  jQuery.rails.confirm = -> true
  jQuery('#industries').on 'ajax:before',
    'a[data-confirm]:not([confirmed])',
    ->
      elem = jQuery @
      elem.toggleClass('btn-danger btn-success')
      elem.css textAlign: 'left'
      elem.animate
        width: 87
        ->
          elem.append(" #{elem.data('confirm')}")
          elem.css textAlign: 'center'
      elem.attr 'confirmed', true
      elem.off 'ajax:before'
      false
