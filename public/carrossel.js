
var images = [img1, img2, img3, img4];

var atual = 0;

setInterval(() => {
  images[atual].classList.remove('active');
  atual++;
  
  if (atual >= images.length) {
    atual = 0;
  }
  
  images[atual].classList.add('active');
}, 3000);