For David
- I am not able to get the option switch to initialize and overide the default
- False feature seems to be buggy
- True - not able to reset the css left value appropriately or use the index as the condition.



Extend the carousel so that it:

● takes an option "loop" (default = true) that makes the slide show start again when it gets
to the end,
  STORIES:
  - Bob(developer) adds "loop" parameter to the class
  - feature is ON by default but can be turned off when switch is FALSE
  - Mary (user) clicks either way
  - She is on the last image and when she clicks on the button, it goes back to the first image
  PSEUDO-CODE:
  look for loop setting in options {}
  if present then capture parameter for loop
  default to true
  animateTransition resets back to imgIndex initialised
  stay in the loop



● if "loop" is false, then the right arrow should be hidden when on the last image,
  PSEUDO-CODE
  hide arrow when index equals lastimg index



● and the left arrow should be hidden when on the first image.
PSEUDO-CODE
  hide arrow when index equals 0


Bonus task:

● add a "slideshow" options (default = false) that if true, loops through the slides automatically,

● another option "waitTime" (default = 1000) should control how many milliseconds each slide is displayed for,

● this will require some googling about timers!