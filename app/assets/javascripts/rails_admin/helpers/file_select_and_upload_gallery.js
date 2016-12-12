// Upload Gallery
function fileSelectAndUploadGallery(evt) {
  //console.log(evt);
  var files = evt.target.files;

  for (i = 0; i < files.length; ++i) {
    var formData = new FormData();
    formData.append('content_builder_image', files[i]);

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
      id = generateID();

      element = '<div class="cb-gallery__item" id="'+ id + '">';
      element += '<div class="cb-tools cb-tools--center">';
      element += '<a class="cb-tools__btn cb-gallery__btn--move fa fa-arrows" href="#"></a>';
      element += '<a class="cb-tools__btn cb-tools__btn--delete fa fa-trash" href="#'+ id + '"></a>';
      element += '</div>';
      element += '<img class="cb-tools__image" src="'+ getImageOfPosition(p, e) +'">';
      element += '</div>';

      $('#' + evt.target.id + ' .cb-gallery').append(element);
    }).fail(function(e) {
      alert('error: ' + e);
    });
  }
};
