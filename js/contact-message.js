export function contactMessage() {
    const contactForm = document.querySelector("#contact-d")
    const feedback = document.querySelector("#feedback-area")
    const messageConfirm = document.querySelector("#confirm-send")

    let runningChibi = `<img id="running-chibi" src="../images/pixel_run.gif"`

    function contactFeedback(event) {
        event.preventDefault();
        const url = "../includes/contact-form.php"
        const thisform = this
        let runningChibi = document.createElement("img");

        runningChibi.src = "../images/pixel_run.gif"
        messageConfirm.appendChild(runningChibi)
        

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

                messageConfirm.innerHTML = ""
                errorRedirect.textContent = "Sorry, something didn't go as planned. Please scroll up and see what went wrong~"
                messageConfirm.appendChild(errorRedirect)

                value.forEach(valueInfo => {
                    const p = document.createElement("p")
                    p.textContent = valueInfo
                    feedback.appendChild(p)
                })

            } else {
                messageConfirm.innerHTML = ""

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
        })
    }
    contactForm.addEventListener("submit", contactFeedback)
}