export function portfolio() {
    gsap.registerPlugin(ScrollToPlugin);
    const featuredArea = document.querySelector("#featured-slider")
    const portfolioSection = document.querySelectorAll(".psection-link")
    const topButton = document.querySelectorAll(".to-top")
    let count = 0;

    let featuredInfo = [
        {
            source : "featured-1",
            text : "Littleroot Dreams",
            projectID: "36"
        },
        
        {
            source : "featured-2",
            text : "EmblemCon",
            projectID: "38"
        },
        

        {
            source : "featured-3",
            text : "Foundation Sixty6",
            projectID: "10"
        },
    ]

    function featuredProjects() {
        let featuredDirect = document.createElement("a")
        let featuredImage = document.createElement("img")
        let textDiv = document.createElement('div')
        let featuredText = document.createElement("p")
        let arrowDiv = document.createElement('div')
        let leftArrow = document.createElement('p')
        let rightArrow = document.createElement('p')

        featuredDirect.href =  `project-details.php?id=${featuredInfo[count].projectID}`

        featuredImage.src = `images/${featuredInfo[count].source}.png`
        
        featuredText.textContent = featuredInfo[count].text

        leftArrow.textContent = "◄"

        rightArrow.textContent = "►"

        //Note: The setAttribute was not found via AI, it was through a quick google search of "How to add an ID using Javascript"
        //I originally thought it was "-target-.id.add = -what you want the id to be-"; same goes for classlist too but these weren't working for some reason :S
        //This is the link too I used: https://www.educative.io/answers/how-to-add-an-id-to-element-in-javascript
        
        textDiv.setAttribute('id', 'featured-text-div')
        featuredImage.setAttribute('id', 'featured-image')
        featuredText.setAttribute('id', 'featured-text')
        arrowDiv.setAttribute('id', 'arrow-div')
        leftArrow.setAttribute('id', 'left-arrow')
        rightArrow.setAttribute('id', 'right-arrow')

        featuredArea.innerHTML = ""

        featuredArea.appendChild(featuredDirect)
        featuredDirect.appendChild(textDiv)
        featuredDirect.appendChild(featuredImage)
        featuredArea.appendChild(arrowDiv)
        arrowDiv.appendChild(leftArrow)
        arrowDiv.appendChild(rightArrow)
        textDiv.appendChild(featuredText)

        rightArrow.addEventListener('click', nextFeatured)
        leftArrow.addEventListener('click', previousFeatured)
    }

    featuredProjects()

    function nextFeatured() {
        count++;

        if (count>=featuredInfo.length) {
            count = 0
        }

        featuredProjects()

        gsap.from(featuredArea, 0.5, {autoAlpha: 0})
    }

    function previousFeatured() {
        count--;

        if (count < 0) {
            count = featuredInfo.length-1;
        }

        featuredProjects()

        gsap.from(featuredArea, 0.5, {autoAlpha: 0})
    }

    function smoothScrollSection(e) {
        e.preventDefault();
        let sectionLink = e.currentTarget.hash;

        gsap.to(window, {duration: 1, scrollTo:{y:`${sectionLink}`}})
    }

    function smoothScrollTop(e) {
        e.preventDefault();

        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }

    portfolioSection.forEach(link => link.addEventListener('click', smoothScrollSection))
    topButton.forEach(top => top.addEventListener('click', smoothScrollTop))

}
    