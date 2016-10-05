function displayIdeas(){
  $.ajax({
    url: "/api/v1/ideas",
    method: "GET",
    dataType: "JSON",
    success: function(response) {
      appendIdeasToPage(response)
    }
  });
}

function deleteIdea(id){
  $.ajax({
    url: "/api/v1/ideas/" + id,
    method: "DELETE",
    data: {
      id: id
    },
    dataType: "JSON"
  });
}
