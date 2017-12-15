if (!context) var context = "body";

jQuery(context).find(".confirm, .danger, .icon-trash, .delete").not(".no-confirm, .ajax").click(function(e) {
  var result = confirm(jQuery(this).attr("data-confirm") || "Tem certeza que deseja continuar?");

  if(result != true) {
    e.preventDefault();
  }
});

var phoneMaskBehavior = function (val) {
  return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
};

var phoneMaskOptions = {
  placeholder: "(__) _____-____",
  onKeyPress: function(val, e, field, options) {
      field.mask(phoneMaskBehavior.apply({}, arguments), options);
    }
};