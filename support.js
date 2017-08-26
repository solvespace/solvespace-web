function fixEmail() {
  var email = String.fromCharCode(210/2 + 1) + 'westhues@cq.cx';
  document.getElementById('emailheader').innerHTML =
    '<a href="mailto:' + email + '">' + email + '</a>';
}

function videoPrepare(video) {
  var button = video.parentNode.querySelector('a.playbutton');
  if(button) {
    button.style.display = "";
  }
}

function videoFallback(video) {
  // replace <video> with its contents
  while(video.hasChildNodes()) {
    if(video.firstChild instanceof HTMLSourceElement) {
      video.removeChild(video.firstChild);
    } else {
      video.parentNode.insertBefore(video.firstChild, video);
    }
  }
  video.parentNode.removeChild(video);
}

function videoPlay(event) {
  var button = event.target;
  button.style.display = "none";

  var video = button.parentNode.firstElementChild;
  video.controls = true;
  video.play();

  event.preventDefault();
  return false;
}
