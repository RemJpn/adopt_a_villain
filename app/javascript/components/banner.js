import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#catchphrase', {
    // strings: ["","You have always dreamed of having the Joker for you birthday?",
    //  "Spending the week end with Dracula?",
    //  "Playing backgammon with Darth Vador?"],
    strings: ["You have always dreamed of having the Joker at you birthday? \n Spending the week end with Dracula? \n Playing backgammon with Darth Vader?"],
    typeSpeed: 50,
    startDelay: 700,
    loop: false
  });
}

export { loadDynamicBannerText };
