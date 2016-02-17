// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $('.trigger').on('click', function() {
    var carId = $(this).attr('id').slice($(this).attr('id').lastIndexOf("_") + 1);
    $('#upload_' + carId).click();
    $(this).hide()
  })
})
