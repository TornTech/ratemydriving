$(document).ready(function() {
  $("body").on("click", ".code-box-button", function() {
    console.log($(".code-box-input").val())
  })
});