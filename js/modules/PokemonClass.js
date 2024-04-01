class Pokemon {
    constructor(
        species,
        type,
        abilities,
        dex,
        trivia
    ) {
        this.species = species,
        this.type = type,
        this.abilities = abilities,
        this.dex = dex,
        this.trivia = trivia
    }

    sound() {
        const pokemonCry = document.querySelector("#sound-button audio")

        pokemonCry.play()
    }

    showSelf() {
        const species = document.createElement("p")
        const type = document.createElement("p")
        const abilities = document.createElement("p")
        const number = document.createElement("p")
        const trivia = document.createElement("p")
        const pokemonIMG = document.createElement("img")
        const button = document.createElement("p")
        const audio = document.createElement("audio")
        const pokemonArea = document.querySelector("#pokemon-area")

        button.textContent = "Play Sound?"
        button.setAttribute("id", "sound-button")

        species.textContent = `Species: ${this.species}`
        type.textContent = `Type(s): ${this.type}`
        abilities.textContent = `Ability/Abilities: ${this.abilities}`
        number.textContent = `National Dex Number: ${this.dex}`
        trivia.textContent = `Trivia: ${this.trivia}`

        pokemonIMG.src = `../images/pokemon_images/${this.dex}.png`
        pokemonIMG.setAttribute("id", "pokemon-image")
        audio.src = `audio/${this.dex}.mp3`

        button.appendChild(audio)
        pokemonArea.appendChild(pokemonIMG)
        pokemonArea.appendChild(species)
        pokemonArea.appendChild(number)
        pokemonArea.appendChild(type)
        pokemonArea.appendChild(abilities)
        pokemonArea.appendChild(trivia)
        pokemonArea.appendChild(button)
    }

}

export {Pokemon}