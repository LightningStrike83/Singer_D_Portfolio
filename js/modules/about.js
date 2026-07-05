export function about() {
    gsap.registerPlugin(ScrollToPlugin);
    const professionalBio = document.querySelector("#professional-tab");
    const casualBio = document.querySelector("#personal-tab");
    const bioButton = document.querySelector("#about-bio-button p")
    const bioText = document.querySelectorAll(".about-bio")
    const bioInfo = document.querySelector("#bio-info")
    const bioTemplate = document.querySelector("#bio-template")
    const infoImage = document.querySelector("#about-image-container")
    const topButton = document.querySelector("#to-top")

    let bioMember = [
        {
            pro: "Hello there. My name is Delilah Singer, a front-end coder with a few extra tricks up my sleeve. I love creating things for others. It always makes me happy to see others’ ideas come to life. Not just with coding, but I also have expertise with creating videos and writing stories. Basically, if you give me some assets to work with, I’ll do my best to mold them into something that you’ll be proud of! If something piques my interest just right too, I can make something truly magical!",

            casual: "Hello there. My name is Delilah Singer, but some call me Lightning. Media has always been my muse and provided me with inspiration to create. One day, I hope to create something that touches others the same way books, movies, games, and TV shows have touched me. Also, I’m a big fan of Eevee and Cinnamoroll!"
        },
    ]

    let proInformation = [
        {
            heading : "System Preference:",
            text : "Windows"
        },

        {
            heading : "Experience",
            text : "Since 2011;<br>Studied in 2022 and graduated in 2024"
        },

        {
            heading : "Strengths",
            text : "Front-End Coding, Unique Concepts"
        },

        {
            heading : "Other Skills",
            text : "Video editing, asset creation, database management"
        },

        {
            heading : "Career Aspirations",
            text : "To work with a reputable company and create things that make others happy"
        },

        {
            heading : "Software Preferences",
            text : "VS Code, Adobe Creative Suite, Wamp"
        },
    ]

    let personalInformation = [
        {
            heading : "Favourite Movies:",
            text: "-Detective Pikachu<br>-Deadpool & Wolverine<br>-A Silent Voice",
        },

        {
            heading : "Favourite TV Shows",
            text : "-Brooklyn Nine-Nine<br>-She-Ra and the Princesses of Power<br>-Wandering Son"
        },

        {
            heading : "Favourite Games",
            text : "-Pokemon Let's Go Eevee<br>-Telltale's The Walking Dead<br>-The Last of Us Pt. 1"
        },

        {
            heading : "Favourite Songs",
            text : "-Show Yourself- Idina Menzel<br>-Juvenile- Hatsune Miku<br> -Fearless- Taylor Swift"
        },

        {
            heading : "Favourite Holiday",
            text : "Halloween"
        },

        {
            heading : "Hobbies",
            text : "-Writing<br>-Cosplaying<br>-Video games"
        },
    ]

    function bioData() {
        proInformation.forEach(info => {
            const clone = bioTemplate.content.cloneNode(true);

            const bioHeading = clone.querySelector(".bio-heading");
            bioHeading.innerHTML = info.heading
            
            const bioText = clone.querySelector(".bio-text");
            bioText.innerHTML = info.text

            bioInfo.appendChild(clone);
        })

        bioText.forEach(text => {
            const shortBio = document.createElement("p")
            shortBio.textContent = bioMember[0].pro

            text.appendChild(shortBio)
        })
    }

    bioData()

    function proData() {
        const professionalTab = document.querySelector("#professional-tab")
        const personalTab = document.querySelector("#personal-tab")
        const bioChange = document.querySelectorAll(".about-bio p")

        professionalTab.style.backgroundColor = "rgb(42, 42, 42)"
        personalTab.style.backgroundColor = "rgb(21, 21, 21)"
        
        infoImage.style.backgroundImage = "url(../images/professional.jpg)"

        proInformation.forEach((info, index) => {
            const bioHeading = document.querySelectorAll(".bio-heading");
            bioHeading[index].textContent = info.heading

            const bioText = document.querySelectorAll(".bio-text")
            bioText[index].textContent = info.text
        })

        bioChange.forEach(change => {
            change.textContent = bioMember[0].pro
        })
    }

    function casualData() {
        const professionalTab = document.querySelector("#professional-tab")
        const personalTab = document.querySelector("#personal-tab")
        const bioChange = document.querySelectorAll(".about-bio p")

        infoImage.style.backgroundImage = "url(../images/personal.jpg)"

        professionalTab.style.backgroundColor = "rgb(21, 21, 21)"
        personalTab.style.backgroundColor = "rgb(42, 42, 42)"

        personalInformation.forEach((info, index) => {
            const bioHeading = document.querySelectorAll(".bio-heading");
            bioHeading[index].innerHTML = info.heading

            const bioText = document.querySelectorAll(".bio-text")
            bioText[index].innerHTML = info.text
        })

        bioChange.forEach(change => {
            change.textContent = bioMember[0].casual
        })
    }

    function showBiography() {
        const underBio = document.querySelector("#mobile-bio")

        if (underBio.style.display === "block") {
            underBio.style.display = "none"
            bioButton.textContent = "Show Bio →"
        } else {
            underBio.style.display = "block"
            bioButton.textContent = "Hide Bio ↓"
        }

        
        
    }

    function smoothScrollTop() {
        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    professionalBio.addEventListener("click", proData)
    casualBio.addEventListener("click", casualData)
    bioButton.addEventListener("click", showBiography)
    topButton.addEventListener('click', smoothScrollTop)
}

//AI Index:

//Prompt: Hi, can you check my code please?

//Reason for Prompt: Had a brainfart and after an hour couldn't figure out what I needed to do and felt like it was a quick and easy solution so didn't wanna bug Professor De Luca for something so small

//The Code That Was Checked: <div id="bio-info" class="col-span-2 m-col-start-6 m-col-end-11">
//         <h3 class="col-span-2 m-col-span-5">Dan Singer</h3>
//         <div id="big-screen-bio" class="about-bio"></div>
//         <template id="bio-template">
//           <p class="bio-heading"></p>
//           <p class="bio-text"></p>
//         </template>
//       </div>

// <div id="about-bio-button" class="col-span-2 m-col-span-5">
//         <p>Show Bio &#8594</p>
//         <div id="mobile-bio" class="about-bio"></div>
//       </div> 

// const bioText = document.querySelectorAll(".about-bio")

// let bioMember = [
//         {
//             pro: "Hello there. My name is Dan Singer, a front-end coder with a few extra tricks up my sleeve. I love creating things for others. It always makes me happy to see others’ ideas come to life. Not just with coding, but I also have expertise with creating videos and writing stories. Basically, if you give me some assets to work with, I’ll do my best to mold them into something that you’ll be proud of! If something piques my interest just right too, I can make something truly magical!",

//             casual: "Hello there. My name is Dan Singer, but some call me Lightning. Media has always been my muse and provided me with inspiration to create. One day, I hope to create something that touches others the same way books, movies, games, and TV shows have touched me. Also, I’m a big fan of Eevee and Cinnamoroll!"
//         },
//     ]

// bioText.forEach(text => {
//             const shortBio = document.createElement("p")
//             shortBio.textContent = bioMember.pro

//             text.appendChild(shortBio)
//         })

//The Response: In your loop where you're trying to append a short bio to each element with the class .about-bio, you are using bioMember.pro directly. However, bioMember is an array, and you probably want to access the first element of that array. You should replace bioMember.pro with bioMember[0].pro.