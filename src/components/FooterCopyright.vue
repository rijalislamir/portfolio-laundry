<script setup lang="ts">
import facebookIcon from "../assets/img/icons/facebook-white.svg";
import twitterIcon from "../assets/img/icons/twitter-white.svg";
import instagramIcon from "../assets/img/icons/instagram-white.svg";
import whatsappIcon from "../assets/img/icons/whatsapp-white.svg";
import linkedinIcon from "../assets/img/icons/linkedin-white.svg";
import { menuStore } from "../stores/menu";

const clickMenu = () => {
  menuStore.value.setIsClickedMenu(true);
};
</script>

<template>
  <!-- Footer -->
  <footer
    class="bg-slate-900 flex flex-col gap-8 text-white items-center justify-center min-h-[400px]"
  >
    <div class="relative w-full">
      <div class="bg-white absolute top-0 left-0 right-0 lg:h-1/2"></div>

      <div
        class="bg-gradient-to-b from-blue-main to-blue-600 relative w-full max-w-5xl mx-auto text-center lg:rounded-xl"
      >
        <h1 class="text-2xl font-bold px-12 pt-8">
          Let's try <span class="whitespace-nowrap">the smoothness!</span>
        </h1>

        <p class="font-thin text-sm px-8">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, at!
        </p>

        <div
          class="flex flex-col gap-4 items-center p-8 max-w-xl mx-auto lg:flex-row lg:gap-16"
        >
          <button
            class="bg-white text-blue-main p-4 w-full rounded-lg font-bold flex items-center justify-center gap-2 hover:bg-slate-100"
          >
            <span class="google-play-icon w-6"></span>
            Play Store
          </button>
          <button
            class="bg-white text-blue-main p-4 w-full rounded-lg font-bold flex items-center justify-center gap-2 hover:bg-slate-100"
          >
            <span class="apple-icon w-6"></span>
            App Store
          </button>
        </div>
      </div>
    </div>

    <div class="w-full p-8">
      <div class="flex flex-col items-center w-full max-w-5xl mx-auto">
        <h1 class="text-xl font-bold sm:w-full">Logo</h1>

        <hr class="w-full my-8 border-slate-500" />

        <div class="flex flex-col gap-12 w-full sm:flex-row">
          <div class="flex flex-col content-start gap-4 basis-0 grow">
            <h3 class="font-bold">About</h3>

            <ul class="flex flex-col gap-2">
              <li @click="clickMenu"><a href="#about">Shop</a></li>
              <li @click="clickMenu"><a href="#service">Service</a></li>
            </ul>
          </div>

          <div class="flex flex-col content-start gap-4 basis-0 grow">
            <h3 class="font-bold">Pricing</h3>

            <ul class="flex flex-col gap-2">
              <li @click="clickMenu"><a href="#regular-pricing">Regular</a></li>
              <li @click="clickMenu"><a href="#premium-pricing">Premium</a></li>
            </ul>
          </div>

          <div class="flex flex-col content-start gap-4 basis-0 grow">
            <h3 class="font-bold">Contact Us</h3>

            <ul class="flex flex-col gap-2">
              <li @click="clickMenu"><a href="#location">Location</a></li>
              <li @click="clickMenu">
                <a href="#contact-us">Customer Support</a>
              </li>
            </ul>
          </div>
        </div>

        <hr class="w-full my-8 border-slate-500" />

        <div
          class="flex flex-col justify-center items-center gap-4 sm:w-full sm:flex-row sm:justify-between"
        >
          <div>© 2023 <a href="#">Rijal Islami</a></div>
          <div class="flex gap-4">
            <a href="#">
              <img :src="facebookIcon" class="hover:scale-125 duration-100" />
            </a>
            <a href="#">
              <img :src="twitterIcon" class="hover:scale-125 duration-100" />
            </a>
            <a href="#">
              <img :src="instagramIcon" class="hover:scale-125 duration-100" />
            </a>
            <a href="#">
              <img :src="whatsappIcon" class="hover:scale-125 duration-100" />
            </a>
            <a href="https://linkedin.com/in/rijalislami">
              <img :src="linkedinIcon" class="hover:scale-125 duration-100" />
            </a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.google-play-icon {
  content: url("../assets/img/icons/google-play-black.svg");
}

.apple-icon {
  content: url("../assets/img/icons/apple-black.svg");
}
</style>
