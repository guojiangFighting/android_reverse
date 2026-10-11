var imgs = document.getElementsByTagName('img');
for (var i = 0; i < imgs.length; i++) {
    var img = imgs[i];
    img.addEventListener('touchstart', touchstart);
    img.addEventListener('touchmove', touchmove);
    img.addEventListener('touchend', touchend);
}
var touchX, touchY;
var imageLists = [];
function touchstart(e) {
    touchX = e.touches[0].clientX;
    touchY = e.touches[0].clientY;
}
function touchmove(e) {
    if (Math.abs(touchX - e.touches[0].clientX) > 10 || Math.abs(touchY - e.touches[0].clientY) > 10) {
        touchX = null;
        touchY = null;
    }
}
function touchend(e) {
    if (touchX && touchY) {
        var parentElement = this.parentNode;
        if (parentElement.tagName === "A") {
          return ;
        }
        if (this.hasAttribute("data-href")) {
          return ;
        }
        e.preventDefault();
        window.imageBridge.postMessage(this.src);
    }
}
function getAllImages() {
  imageLists = [];
  const images = document.getElementsByTagName('img');
  for (let i = 0; i < images.length; i++) {
    const src = images[i].getAttribute('src');
    if (src) {
        imageLists.push(src);
    }
  }
  return JSON.stringify(imageLists);
}