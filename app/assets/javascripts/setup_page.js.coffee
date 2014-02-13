# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".form-control").val ""
  return

$ ->
  $("#setupSave").click ->
    window.location.reload()
    return

  $("#model_name").autocomplete(
    minLength: 1
    source: "auto_complete/index"
    focus: (event, ui) ->
      $("#model_name").val ui.item.name
      $("#reman_model_name").val ui.item.reman
      $("#qcset").val ui.item.reman
      false

    select: (event, ui) ->
      $("#model_name").val ui.item.name
      $("#link_origin_id").val ui.item.name
      false
  ).data("uiAutocomplete")._renderItem = (ul, item) ->
    $("<li></li>").data("item.uiAutocomplete", item).append("<a>" + item.name + "</a>").appendTo ul

  return
