$(document).ready(admin);
$(document).on('page:load', admin);

function admin() {
  $("body").on("click", ".companies-list-admin-rows", function() {
    var companyID = $(this).attr("data-company-id")
  })
}