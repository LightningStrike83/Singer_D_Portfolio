export function index() {
    const demoReel = document.querySelector ("#demo-reel p")
    const roleQuote = document.querySelectorAll(".role-text")
    const chibiQuoteText = document.querySelector("#chibi-quote")
    let tl = gsap.timeline();
    const closeButton = document.querySelector(".lb_close")
    const currentTheme = localStorage.getItem("visitor")

    let chibiQuotes = [
        {
            quote : "Coding is like a giant puzzle to me, and I love bringing people's ideas to life!"
        },

        {
            quote : "I love making videos about as much as I love watching them! Especially if they make people laugh!"
        },

        {
            quote : "A lot of fun and creative ideas are brewing in this noggin' of mine, just waiting to get out!"
        }
    ]

    function openDemoReel() {
        const demoReelLightBox = document.querySelector("#demo-lb")
        window.scrollTo(0, 0);
        demoReelLightBox.style.display = "grid";
    }

    function chibiQuote() {
        let role = this.dataset.member
        const chibiHome = document.querySelector("#chibi-home")
        let target = chibiQuoteText.dataset.member

        if (chibiQuoteText.style.display === "flex") {
            if (target === role) {
                chibiQuoteText.style.display = "none";
                chibiHome.src = "images/lightning_sprite.png"
            } else {
                chibiQuoteText.textContent = chibiQuotes[role].quote;
                chibiHome.src = "images/lightning_sprite_2.png"
                chibiQuoteText.setAttribute('data-member', role)
            }
        } else {
            chibiQuoteText.style.display = "flex";
            chibiQuoteText.textContent = chibiQuotes[role].quote;
            chibiHome.src = "images/lightning_sprite_2.png"

            chibiQuoteText.setAttribute('data-member', role)
        }
    }

    function closeLightbox() {
        const lightbox = document.querySelector(".lightbox")

        lightbox.style.display = "none"
    }

    if (currentTheme == "visitor") {
        document.body.classList.add("visited")
    }


    if (document.body.classList.contains("visited")) {
    } else {
        tl.from("#greeting", 1.5, {autoAlpha: 0})
        tl.from("#info-area", 1, {autoAlpha: 0})
        tl.from("#profile-text h3, #mobile-name", 1.5, {autoAlpha: 0, scale: 0})
        tl.from("header, footer, #chibi-home, #profile-image, #demo-reel, #mobile-headshot", 1, {autoAlpha: 0})
        tl.staggerFrom(".role-text, .role-divider, .link-button", 1, {autoAlpha: 0, scale: 0}, 0.3, 3)
        document.body.classList.add("visited")
    }

    let theme = "Not-Visited"

    if (document.body.classList.contains("visited")) {
        theme = "visited"
    }


    demoReel.addEventListener('click', openDemoReel)
    roleQuote.forEach(role => role.addEventListener('click', chibiQuote))
    closeButton.addEventListener('click', closeLightbox)
    localStorage.setItem("visitor", theme)
}

//Lines for localstorage:
//7, 58-77, 83