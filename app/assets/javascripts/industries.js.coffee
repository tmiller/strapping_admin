# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

  jQuery.rails.allowAction = (element) -> 
    if not element.data('confirm') or element.data('confirmed')
      return true
    else
      element.data 'confirmed', true
      element.append(" #{element.data('confirm')}")
      element.toggleClass('btn-danger btn-success')

      undo = =>
        element.removeData 'confirmed'
        element.toggleClass 'btn-danger btn-success'
        element.html '<i class="icon-trash icon-white"></i>'

      setTimeout undo, 5000
      false
