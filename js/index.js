(() => {
    const demoReel = document.querySelector ("#demo-reel p")
    const roleQuote = document.querySelectorAll(".role-text")
    const chibiQuoteText = document.querySelector("#chibi-quote")
    let tl = gsap.timeline();
    const closeButton = document.querySelector(".lb_close")

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

    function chibiQuote(e) {
        let role = this.dataset.member
        const chibiHome = document.querySelector("#chibi-home")
        let target = e.target.id

        if (chibiQuoteText.style.display === "flex") {
            if (target = e.currentTarget.id) {
                chibiQuoteText.style.display = "none";
                chibiHome.src = "images/lightning_sprite.png"
            } else {
                chibiQuoteText.style.display = "flex";
                chibiQuoteText.textContent = chibiQuotes[role].quote;
                chibiHome.src = "images/lightning_sprite_2.png"
            }
        } else {
            chibiQuoteText.style.display = "flex";
            chibiQuoteText.textContent = chibiQuotes[role].quote;
            chibiHome.src = "images/lightning_sprite_2.png"
        }

    //Note: I was trying to write an if/then statement so I could have the dialogue box close. This created an issue however of instead of changing the role text, it would close the box, which isn't inherently bad, but I would have to figure out a way to tell Javascript to detect which one was clicked and if the previous clicked role matches the one that is now being clicked, then close the dialogue box. If it doesn't match then display the appropriate text. Unfortunately, I ran out of time before figuring this out.
    //I left this code in as proof of concept

    //    if (chibiQuoteText.style.display === "flex") {
    //     chibiQuoteText.style.display = "none";
    //     chibiHome.src = "images/lightning_sprite.png"
    //    } else {
    //     chibiQuoteText.style.display = "flex";
    //     chibiQuoteText.textContent = chibiQuotes[role].quote;
    //     chibiHome.src = "images/lightning_sprite_2.png"
    //    }
    }

    function closeLightbox() {
        const lightbox = document.querySelector(".lightbox")

        lightbox.style.display = "none"
    }

    tl.from("#greeting", 1.5, {autoAlpha: 0})
    tl.from("#info-area", 1, {autoAlpha: 0})
    tl.from("#profile-text h3, #mobile-name", 1.5, {autoAlpha: 0, scale: 0})
    tl.from("header, footer, #chibi-home, #profile-image, #demo-reel, #mobile-headshot", 1, {autoAlpha: 0})
    tl.staggerFrom(".role-text, .role-divider, .link-button", 1, {autoAlpha: 0, scale: 0}, 0.3, 3)

    demoReel.addEventListener('click', openDemoReel)
    roleQuote.forEach(role => role.addEventListener('click', chibiQuote))
    closeButton.addEventListener('click', closeLightbox)
})();