export function hamburger() {
    const hamMenu = document.querySelector(".hamburger")
   
    function openHamburgerMenu() {
        let mobileMenu = document.querySelector(".navigation");
        let socialMedia = document.querySelector(".social-media-header")

        mobileMenu.classList.toggle("nav-appear");
        socialMedia.classList.toggle("sm-appear");
        hamMenu.classList.toggle("rotate");
    }

    hamMenu.addEventListener('click', openHamburgerMenu)
}
