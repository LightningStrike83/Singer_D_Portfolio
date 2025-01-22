export function justLightning() {
    gsap.registerPlugin(PixiPlugin) 
    gsap.registerPlugin(TextPlugin)

    //Note: The buttonDiv and buttonText are defined in functions rather than up here because when worseHorror is called, it will not start the buttonChange and copyright textChange immediately; in theory it's because it's part of timeline and keeping buttonDiv and buttonText as a constant will keep the event listeners on so it's running through the previous timeline stuff first before changing the new text

    const buttonArea = document.querySelector("#buttons")
    let tl = gsap.timeline();

    function createButton() {
        const buttonDiv = document.createElement('div')
        const buttonText = document.createElement('p')

        buttonDiv.setAttribute('class', 'col-span-full')
        buttonDiv.setAttribute('id', "demo-button")
        buttonText.textContent = 'Change?'

        buttonArea.appendChild(buttonDiv)
        buttonDiv.appendChild(buttonText)

        buttonDiv.addEventListener('click', triggerHorror)
    }

    createButton()

    function triggerHorror() {
        const mainImage = document.querySelector("#main-image-jl img")
        const buttonDiv = document.createElement('div')
        const buttonText = document.createElement('p')

        buttonArea.innerHTML = ''

        buttonDiv.setAttribute('class', 'col-span-full')
        buttonDiv.setAttribute('id', "demo-button")
        buttonText.textContent = 'Go Back?'

        buttonArea.appendChild(buttonDiv)
        buttonDiv.appendChild(buttonText)

        buttonDiv.addEventListener('click', increaseHorror)

        mainImage.src = "images/just_lightning.jpg"

        gsap.from(mainImage, 1.5, {autoAlpha: 0.5})
    }

    function increaseHorror() {
        const buttonDiv = document.createElement('div')
        const buttonText = document.createElement('p')
        const titleChange = document.querySelector("#title h3")
        const textChange = document.querySelector("#title p")
        //const darkImage = document.querySelector("#lightning-pic")
        //const darkImage = new PIXI.Sprite.from("#lightning-pic");
        //const darkImage = document.createElement("img");
        //const imageArea = document.querySelector("#main-image")

        buttonArea.innerHTML = ''

        buttonDiv.setAttribute('class', 'col-span-full')
        buttonDiv.setAttribute('id', "demo-button")
        buttonText.textContent = 'Try Again?'

        buttonArea.appendChild(buttonDiv)
        buttonDiv.appendChild(buttonText)

        tl.to(titleChange, {duration: 2.5,text: "Just Delilah",});
        tl.to(textChange, {duration: 2.5,text: "Just Delilah",});

        //imageArea.innerHTML = ""
        //darkImage.src = "images/just_lightning.jpg"
        //imageArea.appendChild(darkImage)
        //app.stage.addChild(darkImage)


        //gsap.to(darkImage, {duration: 1, pixi:{colorize:"red", colorizeAmount:1}});

        buttonDiv.addEventListener('click', worseHorror)
    }

    function worseHorror() {
        const buttonDiv = document.createElement('div')
        const buttonText = document.createElement('p')

        buttonArea.innerHTML = ''

        buttonDiv.setAttribute('class', 'col-span-full')
        buttonDiv.setAttribute('id', "demo-button")
        buttonText.textContent = 'Try Again'

        buttonArea.appendChild(buttonDiv)
        buttonDiv.appendChild(buttonText)

        const buttonChange = document.querySelector("#demo-button p")
        const copyright = document.querySelector(".copyright")
        tl.to(buttonChange, {duration: 2.5,text: "Just Delilah",});
        tl.to(copyright, {duration: 2.5,text: "© Just Delilah",});

        buttonDiv.addEventListener('click', justLightning)
    }

    function justLightning() {
        const jlArea = document.querySelector("#secret-area")
        const jlMessage = document.createElement('p')

        jlMessage.textContent = "Just Delilah"

        jlArea.appendChild(jlMessage)
    }
}
    