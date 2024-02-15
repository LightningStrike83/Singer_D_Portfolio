console.log("Greetings and bienvenue!");

import { hamburger } from "./hamburger.js"
import { index } from "./index.js"
import { genshinAPI } from "./genshin-api.js";
import { about } from "./about.js";
import { contact } from "./contact.js";
import { fullprojects } from "./full-projects.js";
import { justLightning } from "./just-lightning.js";
import { portfolio } from "./portfolio.js";
import { projectDetails } from "./project-details.js";
import { resume } from "./resume.js";
import { slider } from "./slider.js";
import { trivia } from "./trivia.js";
import { video } from "./video.js";
import { WTP } from "./wtp.js";

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