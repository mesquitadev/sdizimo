if (!context) var context = "body";

jQuery(context).find(".confirm, .danger, .icon-trash, .delete").not(".no-confirm, .ajax").click(function(e) {
  var result = confirm(jQuery(this).attr("data-confirm") || "Tem certeza que deseja continuar?");

  if(result != true) {
    e.preventDefault();
  }
});