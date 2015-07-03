$(document).ready(admin);
$(document).on('page:load', admin);

function admin() {
  $("body").on("click", ".companies-list-admin-rows", function() {
    var companyClass = $(this).attr("data-company-id")
    $(".cars-list-admin-section").hide()
    $("." + companyClass).show()
  })
}