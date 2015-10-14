(function(window, document) {
    'use strict';

    $(document).ready(function() {
        var jarallaxes = $('.jarallax');
        for (var i = 0; i < jarallaxes.length; i++) {
            var $jarallax = $(jarallaxes[i]);
            $jarallax.jarallax({
                speed: $jarallax.data('speed'),
                enableTransform: true
            });
        }
    });

})(window, document);
