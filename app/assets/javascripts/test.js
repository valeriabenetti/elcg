// Place al the behaviors and hooks realted to the matching controller here.
// all this logic will automatically be available in application.js

$(document).ready(function() {
  $('.media-heading').on('click', function(event) {
    $(this).css({color: 'orange'})
  })

  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    $.ajax({
      url: '/tests',
      data: { query: queryValue },
      dataType: 'script'
    })
   })
 })
