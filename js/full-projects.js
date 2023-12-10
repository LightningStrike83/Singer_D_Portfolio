(() => {
    gsap.registerPlugin(ScrollToPlugin);
    const topButton = document.querySelector("#to-top")

    function smoothScrollTop(e) {
        e.preventDefault();

        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    topButton.addEventListener('click', smoothScrollTop)
})();