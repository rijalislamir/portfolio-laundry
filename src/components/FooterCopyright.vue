<script setup lang="ts">
import facebookIcon from "../assets/img/icons/facebook-white.svg";
import twitterIcon from "../assets/img/icons/twitter-white.svg";
import instagramIcon from "../assets/img/icons/instagram-white.svg";
import whatsappIcon from "../assets/img/icons/whatsapp-white.svg";
import linkedinIcon from "../assets/img/icons/linkedin-white.svg";
</script>

<template>
  <footer
    class="bg-slate-900 flex text-white items-center justify-center p-8 min-h-[400px]"
  >
    <div class="flex flex-col items-center w-full max-w-[1000px]">
      <h1 class="text-xl font-bold sm:w-full">Logo</h1>

      <hr class="w-full my-8 border-slate-500" />

      <div class="flex flex-col gap-12 w-full sm:flex-row">
        <div class="flex flex-col content-start gap-4 basis-0 grow">
          <h3 class="font-bold">About Us</h3>

          <ul class="flex flex-col gap-2">
            <li><a href="#">Shops</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Promo</a></li>
          </ul>
        </div>

        <div class="flex flex-col content-start gap-4 basis-0 grow">
          <h3 class="font-bold">Pricing</h3>

          <ul class="flex flex-col gap-2">
            <li><a href="#">Regular</a></li>
            <li><a href="#">Premium</a></li>
          </ul>
        </div>

        <div class="flex flex-col content-start gap-4 basis-0 grow">
          <h3 class="font-bold">Contact Us</h3>

          <ul class="flex flex-col gap-2">
            <li><a href="#">Location</a></li>
            <li><a href="#">Customer Support</a></li>
          </ul>
        </div>
      </div>

      <hr class="w-full my-8 border-slate-500" />

      <div
        class="flex flex-col justify-center items-center gap-4 sm:w-full sm:flex-row sm:justify-between"
      >
        <div>© 2023 <a href="#">Rijal Islami</a></div>
        <div class="flex gap-4">
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
