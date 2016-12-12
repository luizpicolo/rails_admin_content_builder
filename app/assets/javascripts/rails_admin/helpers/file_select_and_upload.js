// upload file via ajax
function fileSelectAndUpload(evt) {
  //console.log(evt);
  var file = evt.target.files[0];

  if(file) {
    var formData = new FormData();
    formData.append('content_builder_image', file);

    $.ajax({
      url: 'create_images',
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      type: 'PUT',
      beforeSend: function() {
        $('#' + evt.target.id).find('figure').append('<div class="cb-loading"></div>');
        $('.cb-tools--center').addClass('cb-tools--disabled');
      },
      complete: function(){
        $('.cb-loading').remove();
        $('.cb-tools--center').removeClass('cb-tools--disabled');
      }
    }).done(function(e) {
      var p = evt.target.getAttribute('data-position');
      $('#' + evt.target.id).find('img').attr('src', getImageOfPosition(p, e));
    }).fail(function(e) {
      alert('error: ' + e);
    });
  }
};
