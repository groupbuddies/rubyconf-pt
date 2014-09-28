#= require vendor/jquery.min
#= require vendor/parallax.min
#= require vendor/jquery.parallax.min
#= require bootstrap
#= require ga
#= require scene

$ ->
  $('.header input[type=checkbox]').on 'change', (event) =>
    $('.nav-items').slideToggle()

  window.onresize = =>
    $('.header input[type=checkbox]').attr('checked', false)
    $('.nav-items').attr('style', '')
