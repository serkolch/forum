$(document).ready(function() {

  var toggleAvatarModal = function() {
    $modal.toggle();
    $avatarModal.attr('style','margin-top:-'+avatarHalfHeight+'px;');
    $avatarModal.attr('style','margin-left:-'+avatarHalfWidth+'px;');
  }

  var $avatar = $('.avatar');
  var $avatarModal = $('.avatarModal');
  var $modal = $('.modal');
  var avatarHalfWidth = $avatar.width()/2;
  var avatarHalfHeight = $avatar.height()/2;

  $avatar.on('click', toggleAvatarModal);
  // $avatarModal.on('click', toggleAvatarModal);
  $modal.on('click', toggleAvatarModal);

})