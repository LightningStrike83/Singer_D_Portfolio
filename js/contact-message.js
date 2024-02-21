export function contactMessage() {
    const contactForm = document.querySelector("#contact-d")
    const feedback = document.querySelector("#feedback-area")
    const messageConfirm = document.querySelector("#confirm-send")

    function contactFeedback(event) {
        event.preventDefault();
        const url = "../Singer_D_Portfolio/includes/contact-form.php"
        const thisform = this

        

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

                value.forEach(valueInfo => {
                    const p = document.createElement("p")
                    p.textContent = valueInfo
                    feedback.appendChild(p)
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

            errorMessage.textContent = "Sorry, something went wrong!"

            feedback.appendChild(errorMessage)
        })
    }
    contactForm.addEventListener("submit", contactFeedback)
}