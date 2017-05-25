// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function)(){

  $('.clickable-bookmark').on('click', function(event) {
     $(this).css({color: 'red'})
   })




  $('#search').on('input', function(event) {
    let queryValue = $(this).val()

    console.log('You are searching for ${queryValue}')

    $.ajax({
      url: '/tests',
      data: { search: queryValue },
      dataType: 'script'
    })
  })
}
