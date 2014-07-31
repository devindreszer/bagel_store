var Order = {
  initialize: function(){
  $('#edit-neighborhood').hide();
  $('#edit-delivery-location').click(function(event){
    event.preventDefault();
    $('#edit-neighborhood').show();
    $('#edit-delivery-location').hide();
  });
  }
};
