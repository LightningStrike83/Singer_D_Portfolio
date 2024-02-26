console.log("Greetings and bienvenue!");

import { hamburger } from "./modules/hamburger.js"
import { index } from "./modules/index.js"
import { genshinAPI } from "./modules/genshin-api.js";
import { about } from "./modules/about.js";
import { contact } from "./modules/contact.js";
import { fullprojects } from "./modules/full-projects.js";
import { justLightning } from "./modules/just-lightning.js";
import { portfolio } from "./modules/portfolio.js";
import { projectDetails } from "./modules/project-details.js";
import { resume } from "./modules/resume.js";
import { slider } from "./modules/slider.js";
import { trivia } from "./modules/trivia.js";
import { video } from "./modules/video.js";
import { WTP } from "./modules/wtp.js";
import { contactMessage } from "./modules/contact-message.js";

if (document.body.dataset.page !== 'index') {
    hamburger()
}

if (document.body.dataset.page === 'index') {
    index();
    video();
} else if (document.body.dataset.page === 'genshin') {
    genshinAPI();
} else if (document.body.dataset.page === 'about') {
    about();
} else if (document.body.dataset.page === 'contact') {
    contact();
    contactMessage();
} else if (document.body.dataset.page === 'fullprojects') {
    fullprojects();
} else if (document.body.dataset.page === 'justlightning') {
    justLightning();
} else if (document.body.dataset.page === 'portfolio') {
    portfolio();
} else if (document.body.dataset.page === 'projectdetails') {
    projectDetails();
} else if (document.body.dataset.page === 'resume') {
    resume();
} else if (document.body.dataset.page === 'slider') {
    slider();
} else if (document.body.dataset.page === 'trivia') {
    trivia();
} else if (document.body.dataset.page === 'wtp') {
    WTP();
}