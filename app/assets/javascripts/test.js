$(document).ready(function() {
  $('.media-heading').on('click', function(event) {
    $(this).css({color: 'orange'})
  })

  $('#query').on('input', function(event) {
    let queryValue = $(this).val()

    console.log(`You are searching for ${queryValue}`)

    $.ajax({
      url: '/pages/landing',
      data: { query: queryValue },
      dataType: 'script'
    })
   })
 })
