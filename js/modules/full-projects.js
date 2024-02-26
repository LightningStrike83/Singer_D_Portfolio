import {ScrollToPlugin} from "./greensock/ScrollToPlugin.js"

export function fullprojects() {
    const topButton = document.querySelector("#to-top")

    function smoothScrollTop(e) {
        e.preventDefault();

        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    topButton.addEventListener('click', smoothScrollTop)
}
    