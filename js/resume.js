(() => {
    gsap.registerPlugin(ScrollToPlugin);
    const topButton = document.querySelector("#to-top")
    const qualificationsButton = document.querySelector ("#qualifications-button");
    const historyButton = document.querySelector("#history-button")
    const resumeDivider = document.querySelector("#resume-divider")

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
    

    qualificationsButton.addEventListener("click", openQualifications)
    historyButton.addEventListener("click", openHistory)
    topButton.addEventListener('click', smoothScrollTop)
})();