---
---

$ ->
  $('#layers').parallax()

  $('.header input[type=checkbox]').on 'change', (event) =>
    $('.nav-items').slideToggle()

  window.onresize = =>
    console.log 'asd'
    $('.header input[type=checkbox]').attr('checked', false)
    $('.nav-items').attr('style', '')
