// a class that represents an image carousel
// it encapsulates all data and functions needed

function Carousel(sel, h, w, options) {

	// freeze value of "this" so it is unambiguous in our functions
	var self = this;

	// initialize an instance of Carousel
	// NOTE: we must call this ourselves (see bottom)
	function initialize(sel, h, w, options) {

		self.sel = sel;
		self.imageHeight = h;
		self.imageWidth = w;

		self.transitionDuration = options.transitionDuration || 200;

		self.$carousel = $(self.sel);
		self.$carousel
			.addClass('carousel')
			.height(self.imageHeight)
			.width(self.imageWidth)
			.append('<a class="carousel-direction previous"><</a><a class="carousel-direction next">></a>');

		self.$slider = self.$carousel.children('.slider');
		self.$slider
			.addClass('carousel-slider')
			.css('left', 0);

		self.$images = self.$slider.children('img');
		self.$images
			.height(self.imageHeight)
			.width(self.imageWidth);

		self.$slider.width(self.imageWidth * self.$images.length);

		self.$next = self.$carousel.children('.carousel-direction.next');
		self.$previous = self.$carousel.children('.carousel-direction.previous');
		self.$next.on('click', self.moveToLeft);
		self.$previous.on('click', self.moveToRight);

		self.imgIndex = 0;
		self.lastImgIndex = self.$images.length - 1;

	}

	// slide the slider left by one image width
	self.moveToLeft = function() {
		if (self.imgIndex < self.lastImgIndex) {
			self.animateTransition(-1)
		}
	}

	// slider the slider right by one image width
	self.moveToRight = function() {
		if (self.imgIndex > 0) {
			self.animateTransition(1)
		}
	}

	// trigger a smooth animation
	self.animateTransition = function(direction) {
		var currLeft = parseInt(self.$slider.css('left'));
		var nextLeft = currLeft + self.imageWidth * direction;
		self.$slider.animate(
			{left: nextLeft},
			self.transitionDuration
		);
		self.imgIndex -= direction;
	}

	initialize(sel, h, w, options || {});
	return self

}