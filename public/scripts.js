//    This code loads the IFrame Player API code asynchronously.
var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

//    This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '390',
    width: '640',
    videoId: 'bpet67TTVag',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    },
    loopPlaylists: true
  });
}

//    The API will call this function when the video player is ready.
function onPlayerReady(event) {
  event.target.playVideo();
  event.target.setLoop(true);
}

function onPlayerStateChange(event) {
  if(event.data === 0) {
    event.target.playVideo();
  }
  console.log(event);
}

function stopVideo() {
  player.stopVideo();
}