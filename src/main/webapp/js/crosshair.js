var cH = $('#crosshair-h'),
    cV = $('#crosshair-v');

$(document).on('mousemove',function(e){
    cH.css('top',e.pageY);
    cV.css('left',e.pageX);
});
