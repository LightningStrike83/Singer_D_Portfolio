export function contactMessage() {
    gsap.registerPlugin(ScrollToPlugin);

    const contactForm = document.querySelector("#contact-d")
    const feedback = document.querySelector("#feedback-area")
    const messageConfirm = document.querySelector("#confirm-send")

    function contactFeedback(event) {
        event.preventDefault();
        const url = "../includes/contact-form.php"
        const thisform = this
        let runningChibi = document.createElement("img");

        console.log(url)

        runningChibi.src = "../images/pixel_run.gif"
        runningChibi.setAttribute("id", "running-chibi")
        messageConfirm.appendChild(runningChibi)

        window.scrollTo({top: 2000, behavior: "smooth"})
        //gsap.to(window, {duration: 1, scrollTo:{messageConfirm}})
        

        const formData =
        "pname=" + thisform.elements.preferred_name.value +
        "&email=" + thisform.elements.email.value +
        "&phone=" + thisform.elements.phone.value +
        "&website=" + thisform.elements.website.value +
        "&subject=" + thisform.elements.subject.value +
        "&message=" + thisform.elements.comments.value;

        fetch (url, {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: formData
        })

        .then(response => response.json())
        .then(responseText => {
            feedback.innerHTML = "";

            if (responseText.errors) {
                const obj = responseText.errors
                const value = Object.values(obj);
                const errorRedirect = document.createElement("p")

                window.scrollTo({top: 0, behavior: "smooth"})

                messageConfirm.innerHTML = ""
                errorRedirect.textContent = "Sorry, something didn't go as planned. Please check the message at the top!"
                messageConfirm.appendChild(errorRedirect)

                value.forEach(valueInfo => {
                    const p = document.createElement("p")
                    p.textContent = valueInfo
                    feedback.appendChild(p)

                })

            } else {
                const chibiRun = document.querySelector("#running-chibi");
                messageConfirm.innerHTML = ""

                //gsap.timeline({repeat:-1})
                //gsap.to(chibiRun, 2, {x:500})
                //Note to Professor De Luca: I'm saving this for my appointment with you~

                contactForm.reset();
                const sendConfirm = document.createElement("p")
                sendConfirm.textContent = responseText.message
                messageConfirm.appendChild(sendConfirm)
            }
        })
        .catch(error => {
            console.log(error)
            feedback.innerHTML = ""
            const errorMessage = document.createElement("p")

            errorMessage.textContent = "Sorry, something went wrong!"

            feedback.appendChild(errorMessage)

            //gsap.to(window, {duration: 1, scrollTo:{y:0}})

            window.scrollTo({top: 0, behavior: "smooth"})

            messageConfirm.innerHTML = ""
        })
    }
    contactForm.addEventListener("submit", contactFeedback)
}