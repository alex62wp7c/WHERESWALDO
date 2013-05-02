window.onload = function() {

var clear = document.getElementById("clear");
var audioElement = document.createElement('audio');
    audioElement.setAttribute('src', 'audio/goodjob.mp3');
    audioElement.setAttribute('preload', 'auto');
    audioElement.setAttribute('onended', 'window.location.reload()');

function playAudio() {
    audioElement.load;
    audioElement.play();
};

clear.onclick = function() {
    localStorage.clear();
    playAudio();
    $("#wrapper").addClass("fadeOutDown");
};

};