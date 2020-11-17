import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#catchphrase', {
    // strings: ["","You have always dreamed of having the Joker for you birthday?",
    //  "Spending the week end with Dracula?",
    //  "Playing backgammon with Darth Vador?"],
    strings: ["", "You have always dreamed of having the Joker at you birthday? \n\nSpending the week end with Dracula? \n\nPlaying backgammon with Darth Vader?"],
    // strings:["", "abc"],

    typeSpeed: 50,
    startDelay: 700,
    loop: false
  });
  // new Typed('#catchphrase2', {
  //   strings: ["", "You have always dreamed of having the Joker at you birthday? \nSpending the week end with Dracula? \n\nPlaying backgammon with Darth Vader?"],
  //   typeSpeed: 50,
  //   startDelay: 700,
  //   loop: false
  // });
  // new Typed('#catchphrase3', {
  //   // strings: ["","You have always dreamed of having the Joker for you birthday?",
  //   //  "Spending the week end with Dracula?",
  //   //  "Playing backgammon with Darth Vador?"],
  //   strings: ["", "You have always dreamed of having the Joker at you birthday? \nSpending the week end with Dracula? \n\nPlaying backgammon with Darth Vader?"],
  //   // strings:["", "abc"],

  //   typeSpeed: 50,
  //   startDelay: 700,
  //   loop: false
  // });
}

export { loadDynamicBannerText };
