$ ->
  $(".ancherRow").on("click", ->
    baseUrl = "http://#{window.location.host}"
    resource = $(this).parents("table").data("resource")
    window.location = "#{baseUrl}/#{resource}/#{$(this).data('id')}"
  )
