<script setup lang="ts">
import facebookIcon from "../assets/img/icons/facebook-white.svg";
import twitterIcon from "../assets/img/icons/twitter-white.svg";
import instagramIcon from "../assets/img/icons/instagram-white.svg";
import whatsappIcon from "../assets/img/icons/whatsapp-white.svg";
import linkedinIcon from "../assets/img/icons/linkedin-white.svg";
</script>

<template>
  <footer>
    <div class="footer-container flex flex-col items-center">
      <h1 class="text-xl font-bold">Logo</h1>

      <hr />

      <div class="footer-menu flex flex-col gap-12 w-full">
        <div class="footer-menu-item">
          <h3 class="font-bold">About Us</h3>

          <ul>
            <li><a href="#">Shops</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Promo</a></li>
          </ul>
        </div>

        <div class="footer-menu-item">
          <h3 class="font-bold">Pricing</h3>

          <ul>
            <li><a href="#">Regular</a></li>
            <li><a href="#">Premium</a></li>
          </ul>
        </div>

        <div class="footer-menu-item">
          <h3 class="font-bold">Contact Us</h3>

          <ul>
            <li><a href="#">Location</a></li>
            <li><a href="#">Customer Support</a></li>
          </ul>
        </div>
      </div>

      <hr />

      <div
        class="footer-copyright flex flex-col justify-center items-center gap-4"
      >
        <div class="copyright-text">© 2023 <a href="#">Rijal Islami</a></div>
        <div class="social-media">
          <a href="#"><img :src="facebookIcon" /></a>
          <a href="#"><img :src="twitterIcon" /></a>
          <a href="#"><img :src="instagramIcon" /></a>
          <a href="#"><img :src="whatsappIcon" /></a>
          <a href="#"><img :src="linkedinIcon" /></a>
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped>
footer {
  background-color: rgb(16, 24, 32);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 400px;
  padding: 36px;
}

hr {
  /* background-color: red; */
  border-color: rgba(255, 255, 255, 0.2);
  height: 0;
  margin: 2rem 0;
  width: 100%;
}

.footer-container {
  display: flex;
  flex-direction: column;
  max-width: 1000px;
  width: 100%;
}

.footer-menu {
  display: flex;
}

.footer-menu ul {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
  list-style-type: none;
}

.footer-menu-item {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  gap: 1rem;
  flex-basis: 0;
  flex-grow: 1;
}

.footer-copyright {
  display: flex;
  justify-content: space-between;
}

.social-media {
  display: flex;
  gap: 1rem;
}
</style>
