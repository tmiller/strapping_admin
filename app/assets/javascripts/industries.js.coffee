# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

  jQuery.rails.allowAction = (element) -> 
    if not element.data('confirm') or element.data('confirmed') and not element.data('animating')
      return true
    else if not element.data 'animating'
      element.data 'animating', true
      element.css textAlign: 'left'
      element.animate width: 87, ->
        element.data 'confirmed', true
        element.append(" #{element.data('confirm')}")
        element.toggleClass('btn-danger btn-success')
        element.css textAlign: ''
        element.removeData 'animating'

      undo = =>
        element.removeData 'confirmed'
        element.toggleClass 'btn-danger btn-success'
        element.css textAlign: 'left'
        element.html '<i class="icon-trash icon-white"></i>'
        element.animate width: 14, ->
          element.css textAlign: ''

      setTimeout undo, 5000
    false


