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
    else {

    }
  })
}

function addEditEventListener() {
  $(".ideas").focusout(function(event) {
    var id = event.target.parentElement.id.split("-")[1];
    if ($(event.target).hasClass("title")) {
      var title = event.target.innerText;
      updateIdeaTitle(id, title);
    }
    else if ($(event.target).hasClass("body")) {
      var body = event.target.innerText;
      updateIdeaBody(id, body);
    }
  })
}
