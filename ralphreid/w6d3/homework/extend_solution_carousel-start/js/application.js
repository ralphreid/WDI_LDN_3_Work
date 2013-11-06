function setupCarousel() {
  window.carouselA = new Carousel('#carousel-A', 612, 612);
  window.carouselB = new Carousel('#carousel-B', 500, 500, {transitionDuration: 800});
}

$('document').ready(setupCarousel);