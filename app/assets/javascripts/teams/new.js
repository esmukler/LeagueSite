(function() {

  $(".add-player-input").click(function(event) {
    event.preventDefault();

    $(".players").append($("#new-player-input").first().html());
  })

})();
