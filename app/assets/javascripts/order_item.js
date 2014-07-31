var OrderItem = {
  initialize: function() {
    $('.menu-item').find('a').click(this.getNewItem.bind(this));
    $('.edit-order-item').click(this.getExistingItem.bind(this));
    $('body').on('change', '#new-order-item-form', this.updatePrice.bind(this));
    $('body').on('submit', '#new-order-item-form', this.submitNewForm.bind(this));
    $('body').on('submit', '#edit-order-item-form', this.submitEditForm.bind(this));
  },

  getExistingItem: function(event) {
    var dataID = $(event.currentTarget).data('id');

    event.preventDefault();

    $.ajax({
      dataType: 'json',
      url: Routes.edit_order_item_path(dataID)
    })
    .done(this.showForm.bind(this));
  },

  getNewItem: function(event) {
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
    $(HandlebarsTemplates.orderForm(order_item_data)).hide().appendTo('body').fadeIn();
    $('html, body').animate({ scrollTop: 0 }, 0);
  },

  updatePrice: function(event) {
    var targetID = event.target.id,
      targetElement = event.target.tagName,
      $target = $(event.target),
      prevSelectPrice,
      itemPrice,
      currentTotal,
      quantity,
      newTotal,
      grandTotal;

    if(isNaN(parseFloat($target.data('prev')))) {
      prevSelectPrice = 0;
    } else {
      prevSelectPrice = parseFloat($target.data('prev'));
    }

    if(targetID === "quantity"){
      itemPrice = 0;
      prevSelectPrice = 0;
    } else if(targetElement === "SELECT") {
      itemPrice = parseFloat($target.find(':selected').data('price'));
      parseFloat($target.data('prev', itemPrice));
    } else if(targetElement === "INPUT") {
      if($target.is(':checked')) {
        itemPrice = parseFloat($target.data('price'));
      } else {
        itemPrice = -parseFloat($target.data('price'));
      }
    }

    quantity = parseInt($('#quantity').find(':selected').val());
    currentTotal = parseFloat($("#total-price").attr('data-price'));
    newTotal = (currentTotal + itemPrice - prevSelectPrice).toFixed(2);
    grandTotal = (newTotal * quantity).toFixed(2);

    if(quantity > 1) {
      $("#total-price")
      .empty()
      .append("Total Price: " + quantity + " x $" + newTotal + ": $" + grandTotal)
      .attr('data-price', newTotal);
    } else {
      $("#total-price")
      .empty()
      .append("Total Price: $" + grandTotal)
      .attr('data-price', newTotal);
    }
  },

  submitNewForm: function(event) {
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
    .done(this.showNewOrder.bind(this));
  },

  submitEditForm: function(event) {
    var dataID = $(event.currentTarget).data('id'),
      formData = $(event.currentTarget).serializeArray(),
      orderItemAttr = {},
      selectionsAttr = [],
      paramsHash = {},
      orderID;

    formData.forEach(function(data){
      if(data.name === "option_id" && data.value !== "") {
        selectionsAttr.push({ "option_id": data.value, "is_selected": true });
      } else if(data.name === "order_id") {
        orderID = data.value;
      } else {
        orderItemAttr[data.name] = data.value;
      }
    });
    orderItemAttr["selections_attributes"] = selectionsAttr;
    paramsHash["order_item"] = orderItemAttr;

    event.preventDefault();
    $.ajax({
      url: Routes.order_item_path(dataID),
      type: 'PATCH',
      dataType: 'json',
      data: paramsHash,
    })
    .done(this.showEditedOrder(orderID).bind(this));
  },

  showEditedOrder: function(orderID) {
    window.location.replace(Routes.order_path(orderID));
  },

  showNewOrder: function(orderItem) {
    window.location.replace(Routes.order_path(orderItem.order_id));
  }

};
