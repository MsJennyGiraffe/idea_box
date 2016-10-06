function appendIdeasToPage(response) {
  var ideas = response.ideas
  for (var i=0; i < ideas.length; i++) {
    appendIdeaToPage(ideas[i]);
  }
}

function appendIdeaToPage(idea) {
  $(".ideas").append(createIdeaHTML(idea));
}

function createIdeaHTML(idea) {
  return "<div id='ideaDiv-" + idea.id +
  "'class='col-md-6'>" +
  "<h2 class='text-center title' contenteditable='true'>" +
  idea.title +
  "</h2>" +
  "<h4 class='body' contenteditable='true'>" +
  idea.body +
  "</h4>" +
  "<h4>" +
  "Quality: " +
  idea.quality +
  "</h4>" + "<button class='delete-button btn btn-info' id='" + idea.id + "'>Delete</button>" +
  "</div>"
}
