var TrandingSlider = new Swiper(".tranding-slider", {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  loop: true,
  slidesPerView: "auto",
  autoplay: true,
  coverflowEffect: {
    rotate: 10,
    stretch: 0,
    depth: 100,
    modifier: 2.5,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.3.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.3.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyCrZnn7dF3sM5Ftm5FbkBoZ4c5-bE9Ov7M",
    authDomain: "helath-care-9a21d.firebaseapp.com",
    databaseURL: "https://helath-care-9a21d-default-rtdb.firebaseio.com",
    projectId: "helath-care-9a21d",
    storageBucket: "helath-care-9a21d.appspot.com",
    messagingSenderId: "829162489136",
    appId: "1:829162489136:web:071f67f3fe570f3288b4f5",
    measurementId: "G-X72Q6H8Q9J"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
