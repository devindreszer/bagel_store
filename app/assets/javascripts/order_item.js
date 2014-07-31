var OrderItem = {
  initialize: function() {
    $('.menu-item').find('a').click(this.getForm.bind(this));
    $('#edit-order-item').click(this.getExistingItem.bind(this));
    $('body').on('submit', '#order-item-form', this.submitForm.bind(this));
  },

  getExistingItem: function(event) {
    var dataID = $(event.currentTarget).data('id');
    debugger;

    event.preventDefault();

    $.ajax({
      dataType: 'json',
      url: Routes.edit_order_item_path(dataID)
    })
    .done(this.showForm.bind(this));
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
  },

  submitForm: function(event) {
    var formData = $(event.currentTarget).serializeArray(),
      orderItemAttr = {},
      selectionsAttr = [],
      paramsHash = {};

    formData.forEach(function(data){
      if(data.name === "option_id" && data.value !== "") {
        selectionsAttr.push({ "option_id": data.value, "is_selected": true });
      } else {
        orderItemAttr[data.name] = data.value;
      }
    });
    orderItemAttr["selections_attributes"] = selectionsAttr;
    paramsHash["order_item"] = orderItemAttr;

    event.preventDefault();
    $.ajax({
      url: Routes.order_items_path(),
      type: 'POST',
      dataType: 'json',
      data: paramsHash,
    })
    .done(this.showOrder.bind(this));
  },

  showOrder: function(order_item) {
    window.location.replace(Routes.order_path(order_item.order_id));
  }

};
