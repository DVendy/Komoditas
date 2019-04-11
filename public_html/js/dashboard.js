function chart(el_id, data){
  var area = new Morris.Area({
    element   : el_id,
    resize    : true,
    data      : data,
    xkey      : 'tanggal',
    ykeys     : ['item1'],
    labels    : ['Item 1'],
    lineColors: ['#3c8dbc'],
    hideHover : 'auto',
	resize: true,
	xLabelFormat: function (x) { return x.getDate().toString(); }
  });
}