// active medium editor plugin
function activeMediumEditor() {
  var text = new MediumEditor('.cb-text', {
    placeholder: {
      text: '',
      hideOnClick: true
    },

    toolbar: {
      buttons: ['bold', 'italic', 'underline', 'anchor']
    },

    anchor: {
      placeholderText: 'Ex: http://site.com'
    },

    anchorPreview: false,

    paste: {
      forcePlainText: true,
      cleanPastedHTML: false,
      cleanReplacements: [],
      cleanAttrs: ['class', 'style', 'dir'],
      cleanTags: ['meta'],
      unwrapTags: []
    }
  })

  var editable = new MediumEditor('.cb-editable', {
    placeholder: false,
    toolbar: false,
    anchor: false,
    anchorPreview: false,

    paste: {
      forcePlainText: true,
      cleanPastedHTML: false,
      cleanReplacements: [],
      cleanAttrs: ['class', 'style', 'dir'],
      cleanTags: ['meta'],
      unwrapTags: []
    }
  })
}
