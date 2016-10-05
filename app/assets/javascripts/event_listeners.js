function addEventListenerToIdeas() {
  $(".ideas").on('click', function(event) {
    if ($(event.target).hasClass("delete-button")) {
      $('#ideaDiv-' + event.target.id).remove();
      deleteIdea(event.target.id);
    }
    else {
      console.log(event);
    }
  })
}
