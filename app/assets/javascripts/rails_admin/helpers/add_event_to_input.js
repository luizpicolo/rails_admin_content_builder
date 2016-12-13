// add event on input file
function addEventToInputFile(id) {
  $('#' + id).on('change', fileSelectAndUpload);
}

// add event on input file
function addEventToInputFileGallery(id) {
  $('#' + id).on('change', fileSelectAndUploadGallery);
}
