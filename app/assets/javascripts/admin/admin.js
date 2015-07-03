$(document).ready(admin);
$(document).on('page:load', admin);

function admin() {
  $("body").on("click", ".companies-list-admin-rows", function() {
    var companyClass = $(this).attr("data-company-id")
    $(".cars-list-admin-section").hide()
    $("." + companyClass).show()
    $(".companies-list-admin-selected").removeClass("companies-list-admin-selected")
    $(this).addClass("companies-list-admin-selected")
  })

  $("body").on("click", ".button-car", function(e) {
    e.preventDefault()
    var selectedCompany = $(".companies-list-admin-selected").attr("data-company-id")
    window.location = "/cars/new?id=" + selectedCompany
  })
}