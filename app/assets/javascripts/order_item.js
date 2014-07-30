var OrderItem = {
  initialize: function() {
    $('.menu-item').find('a').click(this.getForm.bind(this));
  },

  getForm: function(event) {
    var dataID = $(event.currentTarget).closest('.menu-item').data('id');

    event.preventDefault();

    $.ajax({
      dataType: 'json',
      url: Routes.new_order_item_path(),
      data: {menu_item_id: dataID}
    })
    .done(this.showForm.bind(this));

  },

  showForm: function(order_item_data) {
    var dataID = order_item_data.menu_item_id;
    var $dataID = $("[data-id=" + dataID + "]");
    $('body').append(HandlebarsTemplates.orderForm(order_item_data));
  }
};
