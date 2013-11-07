function setupCarousel() {
  window.carouselA = new Carousel('#carousel-A', 612, 612, {loop: false});
  window.carouselB = new Carousel('#carousel-B', 500, 500, {transitionDuration: 800});
}

$('document').ready(setupCarousel);