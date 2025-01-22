export function resume() {
    gsap.registerPlugin(ScrollToPlugin);
    const topButton = document.querySelector("#to-top")
    const qualificationsButton = document.querySelector ("#qualifications-button");
    const historyButton = document.querySelector("#history-button")
    const resumeDivider = document.querySelector("#resume-divider")
    const quoteBox = document.querySelector("#quote-box")
    const leftArrow = document.querySelector("#resume-left")
    const rightArrow = document.querySelector("#resume-right")
    let count = 0

    let testimonials = [
        {
            quote: "I have been friends with Delilah since 2015, and we've worked on a lot of projects together over the years. She's always been wonderful to work with, bringing a strong sense of style to all her efforts, but more than willing to work and compromise to make the best possible end result. Our most recent projects were co-hosting panels at an online convention in 2023, and she did so much behind the scenes to ensure they ran smoothly and lived up to her vision--she's a bright and positive force who always gives it her all!",
            source: "-DucessaEva"
        },

        {
            quote: "I love working with Delilah because I always know with certainty the job will get done and it will get done well. She puts forth full effort on every project, and supports everyone she's working with. She's a true team player and a reliable, hard worker. Her dedication to success and her caring nature are truly commendable.",
            source: "-Sophia Westrop",
        },

        {
            quote: "If I could use a word to describe Delilah, it would be loyal, I don't think I've ever met a more loyal person. She also cares about people, she always makes sure that all the people in the room are comfortable and takes everyone's feelings into account. She definitely has her way with people, she knows how to find someone's strength and support them. She is very good with words too, she knows how important it is to properly communicate and express to avoid misunderstandings and conflicts. So, if you're looking for someone trust-worthy and reliable, Delilah is the key element that you've been searching for. She is definitely a hidden gem.",
            source: "-Sunbiscuit",
        },
    ]

    function openQualifications() {
        let qualificationsSection = document.querySelector("#qualifications-section")
        let resumeSection = document.querySelector("#resume-section")

        if (qualificationsSection.style.display === "grid") {
            qualificationsSection.style.display = "none"
            resumeSection.style.display = "none"
            resumeDivider.style.display = "none"
        } else {
            qualificationsSection.style.display = "grid"
            resumeSection.style.display = "none"
            resumeDivider.style.display = "grid"
        }
    }

    function openHistory() {
        let qualificationsSection = document.querySelector("#qualifications-section")
        let resumeSection = document.querySelector("#resume-section")

        if (resumeSection.style.display === "grid") {
            qualificationsSection.style.display = "none"
            resumeSection.style.display = "none"
            resumeDivider.style.display = "none"
        } else {
            qualificationsSection.style.display = "none"
            resumeSection.style.display = "grid"
            resumeDivider.style.display = "grid"
        }
    }

    function smoothScrollTop() {
        gsap.to(window, {duration: 1, scrollTo:{y:0}})
    }
    
    function testimonialApply() {
        const quote = document.createElement("p")
        const source = document.createElement("p")

        quoteBox.innerHTML = ""

        quote.setAttribute("id", "resume-quote")
        source.setAttribute("id", "resume-source")

        quote.textContent = testimonials[count].quote
        source.textContent = testimonials[count].source

        quoteBox.appendChild(quote)
        quoteBox.appendChild(source)

    }

    testimonialApply()

    function previousTest() {
        count--;

        if (count < 0) {
            count = testimonials.length-1;
        }

        testimonialApply()
    }

    function nextTest() {
        count++;

        if (count>=testimonials.length) {
            count = 0
        }

        testimonialApply()
    }

    qualificationsButton.addEventListener("click", openQualifications)
    historyButton.addEventListener("click", openHistory)
    topButton.addEventListener('click', smoothScrollTop)
    leftArrow.addEventListener('click', previousTest)
    rightArrow.addEventListener('click', nextTest)
}