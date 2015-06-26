$(document).ready(codeBox);
$(document).on('page:load', codeBox);

function codeBox() {
  $("body").on("click", ".code-box-button", function() {
    var code = $(".code-box-input").val()
    if (code == "") {
      $(".alert-code").hide()
      $(".no-code-error-holder").show()
    } else {
      window.location = "/submit/" + code
    }
  })
}