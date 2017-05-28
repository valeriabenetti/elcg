// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
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

  $('body').on('click', '.favorite-test', function(event) {
    let favorited = $(this).hasClass('favorited')

    $(this).toggleClass('favorited')

    let testid = $(this).data('test-id') // data-test-id="....."

    console.log(`clicked on a star for test ${testid}`)

    let url = favorited ? `/tests/${testid}/unfavorite` : `/tests/${testid}/favorite`

    $.ajax({
      method: 'POST',
      url: url,
      dataType: 'script'
    })
  })
})
