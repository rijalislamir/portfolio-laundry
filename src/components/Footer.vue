<script setup lang="ts">
import facebookIcon from "../assets/img/icons/facebook-white.svg";
import twitterIcon from "../assets/img/icons/twitter-white.svg";
import instagramIcon from "../assets/img/icons/instagram-white.svg";
import whatsappIcon from "../assets/img/icons/whatsapp-white.svg";
import linkedinIcon from "../assets/img/icons/linkedin-white.svg";
</script>

<template>
  <footer>
    <div class="footer-container">
      <h1>Logo</h1>

      <hr />

      <div class="footer-menu">
        <div class="footer-menu-item">
          <h4>About Us</h4>

          <ul>
            <li>Shops</li>
            <li>Services</li>
            <li>Promo</li>
          </ul>
        </div>

        <div class="footer-menu-item">
          <h4>Pricing</h4>

          <ul>
            <li>Regular</li>
            <li>Premium</li>
          </ul>
        </div>

        <div class="footer-menu-item">
          <h4>Contact Us</h4>

          <ul>
            <li>Location</li>
            <li>Customer Support</li>
          </ul>
        </div>
      </div>

      <hr />

      <div class="footer-copyright">
        <div class="copyright-text">© 2023 Rijal Islami</div>
        <div class="social-media">
          <img :src="facebookIcon" />
          <img :src="twitterIcon" />
          <img :src="instagramIcon" />
          <img :src="whatsappIcon" />
          <img :src="linkedinIcon" />
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
  height: 50vh;
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
