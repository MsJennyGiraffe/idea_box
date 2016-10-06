function addEventListenerToIdeas() {
  $(".ideas").on('click', function(event) {
    if ($(event.target).hasClass("delete-button")) {
      $('#ideaDiv-' + event.target.id).remove();
      deleteIdea(event.target.id);
    }
    else if ($(event.target).hasClass("submit")) {
      var title = $("#new-idea-title").val()
      var body = $("#new-idea-body").val()
      createIdea(title, body);
    }
  })
}
