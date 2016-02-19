$(document).ready(function() {
  $('.small-btn').hide()
  $('.trigger').on('click', function() {
    var carId = $(this).attr('id').slice($(this).attr('id').lastIndexOf("_") + 1);
    $('#upload_' + carId).click();
    $(this).hide();
    $('.small-btn').show();
  })
})
