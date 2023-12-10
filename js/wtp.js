(() => {
    const answerArrow = document.querySelector("#answer-box")

    let tl = gsap.timeline();

    tl.from("#pokemon-box img", 2.5, {autoAlpha: 0, scale: 0})

    function showAnswer() {
        var wtpBox = document.querySelector("#wtp-box")
        var pokemonImage = document.querySelector("#pokemon-box img")
        var pokemonName = document.querySelector("#pokemon-name")

        console.log ("click")
        wtpBox.style.backgroundImage = "url(/images/WTP-images/background-2.gif)"
        answerArrow.style.display = "none"
        pokemonName.style.display = "flex"

        pokemonImage.src = "images/WTP-images/reveal.png"

        tl.from("#pokemon-box img", 1.5, {autoAlpha: 0})
        tl.from("#pokemon-name", 1, {autoAlpha: 0, scale: 0})
    }

    answerArrow.addEventListener("click", showAnswer)
})();