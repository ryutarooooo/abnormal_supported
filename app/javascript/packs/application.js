require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require("@fortawesome/fontawesome-free/js/all")

document.addEventListener("turbolinks:load", () => {
  searchWord = function () {
    var searchText = $(this).val().toLowerCase(),
      targetText;

    $('td.abnormal-place').each(function () {
      targetText = $(this).text().toLowerCase();


      if (targetText.indexOf(searchText) != -1) {

        $(this).parent('tr').removeClass('d-none');
      } else {
        $(this).parent('tr').addClass('d-none');
      }
    });
  };

  // searchWordの実行
  $('#search-text').on('input', searchWord);
});