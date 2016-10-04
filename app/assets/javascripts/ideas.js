$( document ).ready(function() {
  $.ajax({
    url: "/api/v1/ideas",
    method: "GET",
    dataType: "JSON",
    success: function(response) {
      var ideas = response.ideas
      for (var i=0; i < ideas.length; i++) {
        $(".ideas").append(
          "<div class='col-md-6'>" +
          "<h2 class='text-center'>" +
          ideas[i].title +
          "</h2>" +
          "<h4>" +
          ideas[i].body +
          "</h4>" +
          "<h4>" +
          "Quality: " +
          ideas[i].quality +
          "</h4>" +
          "</div>"
        );
      }
    }

  })
});
