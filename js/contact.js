(() => {
    const sendButton = document.querySelector("#submit-contact")

    function openCustomMessage() {
        const messageBox = document.querySelector("#contact-popup")

        messageBox.style.display = "grid"
    }

    sendButton.addEventListener('click', openCustomMessage)
})();