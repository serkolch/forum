$(document).ready(function() {

  var $avatar = $('.avatar');
  var $modal = $('.modal');

  var toggleAvatarModal = function() {
    $modal.toggle();
  }

  $avatar.on('click', toggleAvatarModal);
  $modal.on('click', toggleAvatarModal);

})