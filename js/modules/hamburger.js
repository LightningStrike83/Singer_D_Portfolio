export function hamburger() {
    const hamMenu = document.querySelector(".hamburger")
    const menu = document.querySelector("#main-mobile-menu")
    const mobileX = document.querySelector(".mobile-X")
   
    function openHamburgerMenu() {
        menu.style.visibility = "visible"
        menu.style.opacity = "1"
    }

    function closeHamburgerMenu() {
        menu.style.visibility = "hidden"
        menu.style.opacity = "0"
    }

    hamMenu.addEventListener('click', openHamburgerMenu)
    mobileX.addEventListener("click", closeHamburgerMenu)
}
