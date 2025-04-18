export function genshinAPI() {
    gsap.registerPlugin(ScrollToPlugin);

    const characterBox = document.querySelector("#character-box")
    const detailsBox = document.querySelector("#details-box")
    const detailsTemplate = document.querySelector("#details-template")
    const baseURL = "https://gsi.fly.dev/"
    const ul = document.createElement("ul");
    const div = document.createElement("div")

    div.setAttribute("id", "paimon-box")

    let paimon = `<img id="paimon" src="../images/genshin_images/paimon.gif">`
    
    function characterPopulation(){
        characterBox.appendChild(div)
        div.innerHTML = paimon

        fetch(`${baseURL}characters/search?model_type=Tall female`)
        .then(result => result.json())
        .then(function(result){
            const characters = result.results
            const paimonBox = document.querySelector("#paimon-box")

            paimonBox.remove();
    
            characters.forEach(character => {
                const li = document.createElement("li")
                const p = document.createElement("p")
    
                li.setAttribute("class", "character-name")
                p.textContent = character.name
                li.dataset.member = character.id
    
                li.appendChild(p)
                ul.appendChild(li)
            })
            characterBox.appendChild(ul)
        })
        .then(function(){
            const characterName = document.querySelectorAll(".character-name")
    
            characterName.forEach(name => {
                name.addEventListener("click", characterDetails)
            })
        })
        .catch(error => {
            console.log(error)
        })
    }
    
    characterPopulation()
    
    function characterDetails(){
        gsap.to(window, { duration: 1, scrollTo: ("#details-box")})

        const characterID = this.dataset.member
        const p = document.createElement("p")

        p.setAttribute("class", "loading-text")
        p.textContent = "Loading..."

        detailsBox.innerHTML = paimon
        detailsBox.appendChild(p)
    
        fetch(`${baseURL}characters/${characterID}`)
        .then(response => response.json())
        .then(function(response){
            const template = document.importNode(detailsTemplate.content, true)
            const characterName = template.querySelector("#character-name")
            const characterTitle = template.querySelector("#character-title")
            const characterRarity = template.querySelector("#character-rarity")
            const characterVision = template.querySelector("#character-vision")
            const characterWeapon = template.querySelector("#character-weapon")
            const characterSplash = template.querySelector("#character-splash")
            const shortcut = response.result
    
            detailsBox.innerHTML = ""
    
            characterName.textContent = shortcut.name
            characterRarity.src = `../images/genshin_images/${shortcut.rarity}.webp`
            characterRarity.alt = "Rarity of " + shortcut.name
            characterRarity.setAttribute("class", "rarity")
            characterTitle.textContent = shortcut.title[0]
            characterTitle.setAttribute("class", "title")
            characterVision.textContent = "Vision: " + shortcut.vision
            characterWeapon.textContent = "Weapon: " + shortcut.weapon
            characterSplash.src = `../images/genshin_images/character-${characterID}.webp`
            characterSplash.alt = `Splash art of ` + shortcut.name
            characterSplash.setAttribute("class", "splash-art")
    
            detailsBox.appendChild(characterName)
            detailsBox.appendChild(characterRarity)
            detailsBox.appendChild(characterTitle)
            detailsBox.appendChild(characterVision)
            detailsBox.appendChild(characterWeapon)
            detailsBox.appendChild(characterSplash)
        })
        .catch()
    }

    document.addEventListener("DOMContentLoaded", (event) => {
        gsap.registerPlugin(ScrollToPlugin)});
}

