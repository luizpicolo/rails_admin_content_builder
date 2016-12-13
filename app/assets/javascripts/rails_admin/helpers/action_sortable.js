// sortable to relational
function activeSortable() {
  $('.cb-relational__list').sortable({
    revert: true,
    placeholder: 'ui-sortable-placeholder',
    handle: '.cb-relational__btn--move',
    cursor: 'move',
  });

  $('.cb-gallery').sortable({
    revert: true,
    placeholder: 'ui-sortable-placeholder--gallery',
    handle: '.cb-gallery__btn--move',
    cursor: 'move',
  });
}
