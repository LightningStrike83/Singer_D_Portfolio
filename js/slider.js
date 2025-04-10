export function slider() {
    const sliderCon = document.querySelector("#hero-container");
    const heroSlider = document.querySelector('#bar');
    const left = document.querySelector('#left-image');
    let dragging = false;
    let min = 0;
    let max = sliderCon.offsetWidth;

    function onDown() {
        dragging = true
    }

    function onUp() {
        dragging = false
    }

    function onMove(event) {
        if(dragging === true) {
            let x = event.clientX - sliderCon.getBoundingClientRect().left;

            if(x < min) {
                x = min;
            } else if (x > max) {
                x = max-5;
            }

            heroSlider.style.left = x + 'px';
            left.style.width = x + 'px';
        }
    }
 
    heroSlider.addEventListener('mousedown', onDown)
    document.body.addEventListener('mouseup', onUp)
    document.body.addEventListener('mousemove', onMove)
}
    