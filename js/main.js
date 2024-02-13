console.log("Greetings and bienvenue!");

import { hamburger } from "./hamburger.js"
import { index } from "./index.js"
import { genshinAPI } from "./genshin-api.js";
import { about } from "./about.js";
import { contact } from "./contact.js";

if (document.body.dataset.page !== 'index') {
    hamburger()
}

if (document.body.dataset.page === 'index') {
    index();
} else if (document.body.dataset.page = 'genshin') {
    genshinAPI();
} else if (document.body.dataset.page = 'about') {
    about();
} else if (document.body.dataset.page = 'contact') {
    contact();
}