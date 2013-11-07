function setupCarousel() {
  window.carouselA = new Carousel('#carousel-A', 612, 612);
  window.carouselB = new Carousel('#carousel-B', 500, 500, {
    transitionDuration: 800,
    loop:               false,
    slideshow:          true,
    waitTime:           2500
  });
}

$('document').ready(setupCarousel);