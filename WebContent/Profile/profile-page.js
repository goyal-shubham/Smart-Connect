$('input').on('focusin', function() {
  $(this).parent().find('label').addClass('active');
});

$('input').on('focusout', function() {
  if (!this.value) {
    $(this).parent().find('label').removeClass('active');
  }
});

$(function() {
  
  var g2 = new JustGage({
    id: "gauge2",
    value: 4,
    min: 0,
    max: 7,
    title: "Shifts",
    label: 'this Week'
    
  });    
  
  $( window ).resize(function() {
    $('#gauge2')[0].innerHTML = '';

  var g2 = new JustGage({
    id: "gauge2",
    value: 4,
    min: 0,
    max: 7,
    title: "Shifts",
    label: 'this Week'
    
  }); 
  });
  
});
