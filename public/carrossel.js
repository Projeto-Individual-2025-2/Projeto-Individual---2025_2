

var image1 = document.getElementById('img1'); 
var image2 = document.getElementById('img2'); 
var image3 = document.getElementById('img3'); 

var images = [image1, image2, image3];

var current = 0;

setInterval(() => {
  images[current].classList.remove('active');
  current++;
  
  if (current >= images.length) {
    current = 0;
  }
  
  images[current].classList.add('active');
}, 3000);