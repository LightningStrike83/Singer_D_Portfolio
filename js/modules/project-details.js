export function projectDetails() {
    gsap.registerPlugin(ScrollToPlugin);

    const moreInfo = document.querySelector("#more-info-text")
    const topButton = document.querySelector("#port-top")
    const galleryLightbox = document.querySelector("#gallery-lightbox")
    const thumbnails = document.querySelector("#image-con")
    const thumbTemplate = document.querySelector("#gallery-thumbs-template")
    const thumbClone = thumbTemplate.content.cloneNode(true)
    const closeButton = document.querySelector(".lb_close")
    const toTop = document.querySelector("#port-top a")

    function thumbnailCreate() {
        thumbnails.appendChild(thumbClone)

        const sideImages = document.querySelectorAll(".side-images")

        sideImages.forEach(image => image.addEventListener('click', openGallery))
    }

    thumbnailCreate()

    function showMoreContent() {
        if (moreInfo.style.display === "block") {
            moreInfo.style.display = "none"
            moreInfoButton.textContent = "More Info →"
            topButton.style.display = "none"
        } else {
            moreInfo.style.display = "block"
            moreInfoButton.textContent = "Less Info ↓"
            topButton.style.display = "grid"
        }
    }

    function openGallery() {
        window.scrollTo(0, 0);
        const imageZone = document.querySelector("#primary-lb-image")
        const thumbnailZone = document.querySelector("#related-thumbs")
        const thumbTemplate2 = document.querySelector("#gallery-thumbs-template")
        const thumbClone2 = thumbTemplate2.content.cloneNode(true)
        const imageDescription = document.querySelectorAll(".image-desc")
        let descriptionCount = Number(this.id) + 1;
        const thisDescription = document.querySelector(`#desc-${descriptionCount}`)

        imageDescription.forEach(desc => desc.style.display = "none")
        thisDescription.style.display = "block"

        imageZone.innerHTML = ""
        thumbnailZone.innerHTML = ""

        galleryLightbox.style.display = "grid"

        const bigImage = document.createElement('img')
        bigImage.src = `images/project_images/${this.dataset.folder}/project${this.dataset.member}b-${this.id}.svg`

        imageZone.appendChild(bigImage)
        thumbnailZone.appendChild(thumbClone2)

        const sideImages = document.querySelectorAll(".side-images")
        sideImages.forEach(image => image.addEventListener('click', openGallery))
    }

    function closeLightbox() {
        const lightbox = document.querySelector(".lightbox")

        lightbox.style.display = "none"
    }

    function smoothScroll(e) {
        e.preventDefault();

        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    closeButton.addEventListener('click', closeLightbox)
    toTop.addEventListener('click', smoothScroll)

}
    