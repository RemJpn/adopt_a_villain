import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  // new Typed('#catchphrase', {
  //   // strings: ["","You have always dreamed of having the Joker for you birthday?",
  //   //  "Spending the week end with Dracula?",
  //   //  "Playing backgammon with Darth Vador?"],
  //   strings: ["", "You have always dreamed of having the Joker at you birthday? \n\nSpending the week end with Dracula? \n\nPlaying backgammon with Darth Vader?"],
  //   // strings:["", "abc"],

  //   typeSpeed: 50,
  //   startDelay: 700,
  //   loop: false
  // });

  if (document.querySelector("#catchphrase")) {
    new Typed('#catchphrase', {
      strings: ["", "having the Joker at you birthday?","spending the week end with Dracula?", "playing backgammon with Darth Vader?"],
      typeSpeed: 50,
      startDelay: 700,
      loop: false
    });
  }
}

export { loadDynamicBannerText };
