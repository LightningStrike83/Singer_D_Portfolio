(() => {
    gsap.registerPlugin(ScrollToPlugin);
    const topButton = document.querySelector("#to-top")
    let tl = gsap.timeline();

    function smoothScrollTop(e) {
        e.preventDefault();

        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    tl.staggerFrom("#resume-section li", 1, {autoAlpha: 0}, 0.3, 0.5)

    topButton.addEventListener('click', smoothScrollTop)
})();