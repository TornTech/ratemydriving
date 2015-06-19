$(document).ready(function() {
  $("body").on("click", ".code-box-button", function() {
    var code = $(".code-box-input").val()
    window.location = "/submit/" + code
  })
});