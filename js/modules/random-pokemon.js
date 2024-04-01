import {Eevee, Swampert, Charizard, Torterra, Sableye, Staraptor, Yamper, Wooloo, Ogerpon, Latias, Registeel, Jirachi, Gardevoir} from "./PokemonObjects.js"

export function randomPokemon() {
    console.log("hi")
    const selectButton = document.querySelector("#select-button a")
    const pokemonArea = document.querySelector("#pokemon-area")

    const pokemon = [
        Eevee, Swampert, Charizard, Torterra, Sableye, Staraptor, Yamper, Wooloo, Ogerpon, Latias, Registeel, Jirachi, Gardevoir
    ]

    function randomizePokemon() {
        pokemonArea.innerHTML = ""

        const randomPokemon = Math.floor(Math.random() * pokemon.length)

        pokemon[randomPokemon].showSelf()

        function playSound() {
            pokemon[randomPokemon].sound()
        }

        addEventListener(playSound)
    }

    function addEventListener(playSound) {
        const soundButton = document.querySelector("#sound-button")

        soundButton.addEventListener("click", playSound)
    }

    selectButton.addEventListener("click", randomizePokemon)
}