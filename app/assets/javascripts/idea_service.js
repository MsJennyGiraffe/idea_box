function displayIdeas() {
  $.ajax({
    url: "/api/v1/ideas",
    method: "GET",
    dataType: "JSON",
    success: function(response) {
      appendIdeasToPage(response)
    }
  });
}

function deleteIdea(id) {
  $.ajax({
    url: "/api/v1/ideas/" + id,
    method: "DELETE",
    data: {
      id: id
    },
    dataType: "JSON"
  });
}

function createIdea(title, body) {
  $.ajax({
    url: "/api/v1/ideas",
    method: "POST",
    data: {
      idea: {
        title: title,
        body: body
      }
    },
    dataType: "JSON",
    success: function(response) {
      appendIdeaToPage(response)
    }
  });
}

function updateIdeaTitle(id, title) {
  $.ajax({
    url: "/api/v1/ideas/" + id,
    method: "PATCH",
    data: {
      idea: {
        title: title
      }
    },
    dataType: "JSON",
  });
}

function updateIdeaBody(id, body) {
  $.ajax({
    url: "/api/v1/ideas/" + id,
    method: "PATCH",
    data: {
      idea: {
        body: body
      }
    },
    dataType: "JSON",
  });
}
