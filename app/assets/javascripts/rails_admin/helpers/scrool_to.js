// scroll to
function scrollTo(id) {
  if(id) {
    $('html, body').animate({
      scrollTop: $('#' + id).offset().top
    }, 400)
  }
}
