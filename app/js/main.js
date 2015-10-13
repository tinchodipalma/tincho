(function(window, document) {
    'use strict';

    var sectionClass = '.section',
        windowHeight = window.innerHeight,
        screenHeightToChange = Math.ceil(windowHeight / 4),
        scrollYPos = window.scrollY - screenHeightToChange,
        movingToSlideNumber = Math.ceil(window.scrollY / windowHeight),
        scrollIndex = 0;

    window.addEventListener('scroll', onScroll);

    //////////////////////////

    function onScroll(event) {
        var slideNumber = 0;

        windowHeight = window.innerHeight,
        screenHeightToChange = Math.ceil(windowHeight / 4),
        scrollYPos = window.scrollY - screenHeightToChange,
        movingToSlideNumber = Math.ceil(window.scrollY / windowHeight);
        scrollIndex = window.scrollY > 0 ? window.scrollY / windowHeight : 0;

        if (scrollYPos > 0) {
            slideNumber = Math.ceil(scrollYPos / windowHeight);
        }

        animateSection(slideNumber, movingToSlideNumber)

        console.log(slideNumber, movingToSlideNumber);
    }

    function animateSection(currentSlide, movingSlide) {

        var slideOut = currentSlide,
            slideIn = movingSlide;

        if (currentSlide > movingSlide) {
          slideOut = movingSlide;
          slideIn = currentSlide;
        }

        var slides = document.querySelectorAll(sectionClass);

        if (slideIn > slides.length) {
          slideIn = slides.length;
        }

        var slideInElement = slides[slideIn],
            slideSpeed = (!!slideInElement.dataset.speed ? slideInElement.dataset.speed : 1 ) * 100,
            valueToGo = "-" + Math.ceil(scrollIndex * slideSpeed) + "px";
    }

})(window, document);
