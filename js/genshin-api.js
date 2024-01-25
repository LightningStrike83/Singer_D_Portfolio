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

    }
})();