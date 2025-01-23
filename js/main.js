console.log("Greetings and bienvenue!");

import { hamburger } from "./modules/hamburger.js?version=1.0"
import { index } from "./modules/index.js?version=1.0"
import { genshinAPI } from "./modules/genshin-api.js?version=1.0";
import { about } from "./modules/about.js?version=1.0";
import { contact } from "./modules/contact.js?version=1.0";
import { fullprojects } from "./modules/full-projects.js?version=1.0";
import { justLightning } from "./modules/just-lightning.js?version=1.0";
import { portfolio } from "./modules/portfolio.js?version=1.0";
import { projectDetails } from "./modules/project-details.js?version=1.0";
import { resume } from "./modules/resume.js?version=1.0";
import { slider } from "./modules/slider.js?version=1.0";
import { trivia } from "./modules/trivia.js?version=1.0";
import { video } from "./modules/video.js?version=1.0";
import { WTP } from "./modules/wtp.js?version=1.0";
import { contactMessage } from "./modules/contact-message.js?version=1.0";
import { randomPokemon } from "./modules/random-pokemon.js?version=1.0";

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
} else if (document.body.dataset.page === 'rp') {
    randomPokemon()
}