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

		// handle options
		var defaultOptions = {
			transitionDuration: 200,
			loop: 							true,
			slideshow: 					false,
			waitTime:  					1000
		}
		$.extend(self, defaultOptions, options);

		self.$carousel = $(self.sel);
		self.$carousel
			.addClass('carousel')
			.height(self.imageHeight)
			.width(self.imageWidth)
			.append('<a class="carousel-direction previous"><</a><a class="carousel-direction next">></a><a class="carousel-slideshow-control">Slideshow</a>');

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

		self.$slideshowControl = self.$carousel.children('.carousel-slideshow-control');
		self.$slideshowControl.on('click', self.toggleSlideshow);
		self.$carousel.on('mouseenter', self.slideshowControlFadeIn);
		self.$carousel.on('mouseleave', self.delayedSlideShowControlFadeOut);

		self.imgIndex = 0;
		self.lastImgIndex = self.$images.length - 1;

		self.$slid

		if (self.slideshow) {
			self.startSlideshow();
		} else {
			self.updateNavVisibility();
		}

		self.delayedSlideShowControlFadeOut();

	}
	// fadeing the slideshow control
	self.slideshowControlFadeOut = function() {
		self.$slideshowControl.stop(true).fadeOut(1000);
	}

	self.slideshowControlFadeIn = function (){
		window.clearTimeout(self.slideshowControlFadeOutTimer);
		self.$slideshowControl.stop(true).fadeIn(200);
	}

	// delay the slideshow control animations
	self.delayedSlideShowControlFadeOut = function () {
		self.slideshowControlFadeOutTimer = setTimeout(self.slideshowControlFadeOut, 2000);
	}

	// toggle slideshow function
	self.toggleSlideshow = function() {
		if (self.slideshow) {
			self.stopSlideshow();
		} else {
			self.startSlideshow();
		}
	}

	// start & stop slideshow method
	self.startSlideshow = function() {
		self.slideshow = true;
		self.$slideshowControl.text('PAUSE');
		self.$next.hide();
		self.$previous.hide();
		self.slideshowWaitTimer = setInterval(self.moveToLeft, self.waitTime);

	}

	self.stopSlideshow = function() {
		self.slideshow = false;
		self.$slideshowControl.text('SLIDESHOW');
		window.clearInterval(self.slideshowWaitTimer);
		self.updateNavVisibility();
	}

	// handles visibility of navigation
	self.updateNavVisibility = function () {
		// next control
		if (self.imgIndex == self.lastImgIndex) {
			if (!(self.loop|| self.slideshow)) {
				self.$next.hide();
			}
		} else {
			self.$next.show();
		}
		// previous control
		if (self.imgIndex == 0) {
			if (!(self.loop || self.slideshow)) {
				self.$previous.hide();
			}
		} else {
				self.$previous.show();
			}
		}

	
		

	// slide the slider left by one image width
	self.moveToLeft = function() {
		if (self.imgIndex < self.lastImgIndex) {
			self.animateTransition(-1)
		} else if (self.loop || self.slideshow) {
			self.animateTransition(self.lastImgIndex);
		}
	}

	// slider the slider right by one image width
	self.moveToRight = function() {
		if (self.imgIndex > 0) {
			self.animateTransition(1)
		} else if (self.loop || self.slideshow) {
			self.animateTransition(-self.lastImgIndex);
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
		if (!self.slideshow){
			self.updateNavVisibility();
		}
	}

	initialize(sel, h, w, options || {});
	return self

}