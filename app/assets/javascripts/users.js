$(function(){

  $(".tab").on("click", function(e){
    // Change active tab
    $('.tab').removeClass('active');
    $(this).addClass('active');

    // Hide all tab-content (use class="hidden")
    $('.tab-content').addClass('hidden');

    // Show target tab-content (use class="hidden")
    var x = $(this).data('target');
    $(x).removeClass('hidden');
  });

});
