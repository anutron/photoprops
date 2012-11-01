$(function() {
  // sets a button to be loading.
  $("button[data-loading-text]").live("click", function() {
    $(this).button("loading");
  });
  
  // seta a link to be loading.
  $("a[data-loading-text]").live("click", function() {
    $(this).button("loading");
  });
});