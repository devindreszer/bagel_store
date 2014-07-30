var OrderItem = {
  initialize: function() {
    $('.menu-item').click(this.getForm.bind(this));
  },

  getForm: function(event) {
    debugger;
    var dataID = $(event.currentTarget).data('id');

    event.preventDefault();

    $.ajax({
      dataType: 'json',
      url: Routes.new_order_item_path(),
      data: {menu_item_id: dataID}
    })
    .done(this.showForm.bind(this));

  },

  showForm: function(menu_item_data) {
    var dataID = menu_item_data.menu_item_id;
    var $dataID = $("[data-id=" + dataID + "]");
    $('body').append(HandlebarsTemplates.orderForm(menu_item_data));
  }
};
