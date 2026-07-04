export function video() {
    const video = document.querySelector("video"),
        videoControls = document.querySelector("#video-controls"),
        videoContainer = document.querySelector("#video-container"),
        playButton = document.querySelector("#play-button"),
        pauseButton = document.querySelector("#pause-button"),
        stopButton = document.querySelector("#stop-button"),
        volumeControls = document.querySelector("#change-volume"),
        fullScreen = document.querySelector("#full-screen"),
        closeButton = document.querySelector(".lb_close")

    video.controls = false
    videoControls.classList.remove('hidden');

    function playVideo() {
        video.play();
    }

    function pauseVideo() {
        video.pause();
    }

    function stopVideo() {
        video.pause();
        video.currentTime = 0;
    }

    function changeVolume() {
        video.volume = volumeControls.value;
    }

    function toggleFullScreen() {
        if(document.fullscreenElement) {
            document.exitFullscreen();
        } else if (document.webkitFullscreenElement) {
            document.webkitExitFullscreenElement
        } else if (videoContainer.webkitRequestFullscreen) {
            videoContainer.webkitRequestFullscreen()
        } else {
            videoContainer.requestFullscreen();
        }
    }

    function hideControls() {
        console.log('hi')
        videoControls.classList.add('hide')
    }

    function showControls() {
        console.log('bye')
        videoControls.classList.remove('hide')
    }

    playButton.addEventListener("click", playVideo)
    pauseButton.addEventListener("click", pauseVideo)
    stopButton.addEventListener("click", stopVideo)
    volumeControls.addEventListener("change", changeVolume)
    fullScreen.addEventListener("click", toggleFullScreen)
    videoControls.addEventListener('mouseenter', showControls)
    videoControls.addEventListener('mouseleave', hideControls)
    video.addEventListener('mouseenter', showControls)
    video.addEventListener('mouseleave', hideControls)
    closeButton.addEventListener('click', stopVideo)
}
