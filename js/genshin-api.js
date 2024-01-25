(() => {
    const characterBox = document.querySelector("#character-box")
    const detailsBox = document.querySelector("#details-box")
    const detailsTemplate = document.querySelector("#details-template")
    const baseURL = "https://gsi.fly.dev/"
    const ul = document.createElement("ul");

    function characterPopulation(){
        fetch(`${baseURL}characters/search?model_type=Tall female`)
        .then(result => result.json())
        .then(function(result){
            console.log(result.results)
            const characters = result.results

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
        const characterID = this.dataset.member

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

            console.log(shortcut)
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
})();