---
---

$ ->
  $('.header input[type=checkbox]').on 'change', (event) =>
    $('.nav-items').slideToggle()

  window.onresize = =>
    $('.header input[type=checkbox]').attr('checked', false)
    $('.nav-items').attr('style', '')
