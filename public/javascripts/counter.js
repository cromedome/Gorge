$(document).ready(function() {
    var counter = 0;
    $('#answers').on( 'click', function() {
        counter++;
        if( counter > 1 ) {
            location.href = '/into-the-gorge';
        }
    } );
});
