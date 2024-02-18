export function contactMessage() {
    const contactForm = document.querySelector("#contact-d")
    const feedback = document.querySelector("#feedback-area")
    const messageConfirm = document.querySelector("#confirm-send")

    function contactFeedback(event) {
        event.preventDefault();
        const url = "includes/contact-form.php"
        const thisform = this

        

        const formData =
        "pname=" + thisform.elements.preferred_name.value +
        "&email=" + thisform.elements.email.value +
        "&subject=" + thisform.elements.subject.value +
        "&message=" + thisform.elements.comments.value;

        console.log(formData)

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
                responseText.errors.forEach(error => {
                    const errorText = document.createElement("p")
                    errorText.textContent = error
                    feedback.appendChild(errorText);
                })
            } else {
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

            errorMessage.textContent = "Sorry, your browser doesn't seem to be support AJAX. Apologies!"

            feedback.appendChild(errorMessage)
        })
    }
    contactForm.addEventListener("submit", contactFeedback)
}