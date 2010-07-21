$(function () {
    /* scroll past the address bar on mobile safari */
    setTimeout(function() { window.scrollTo(0,1); }, 0);

    /* tell the server when we press buttons */
    $('.row div').bind('touchstart', function() {
        $(this).addClass('pressed'); 
        $.ajax({
            'type': 'POST',
            'url': 'press/'+this.id
        });
    }).bind('touchend', function() { 
        $(this).removeClass('pressed'); 
    });
});
