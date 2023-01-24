<template>
  <section class="bg-gray-100 py-4">
    <h1 class="text-center text-3xl font-bold px-6">What people say</h1>

    <Swiper
      :modules="modules"
      :slides-per-view="1"
      :space-between="10"
      navigation
      :pagination="{
        clickable: true,
        dynamicBullets: true,
        dynamicMainBullets: 2,
      }"
    >
      <SwiperSlide v-for="person in data">
        <div class="text-center p-8 m-4 bg-gray-200 rounded-3xl h-full">
          <div
            class="bg-slate-900 w-24 h-24 rounded-full m-auto flex items-center justify-center"
          >
            <img :src="userIcon" alt="user-photo" />
          </div>

          <span class="font-bold text-lg inline-block p-4">
            {{ person.name }}
          </span>

          <p class="italic">
            {{ person.text }}
          </p>
        </div>
      </SwiperSlide>
    </Swiper>
  </section>
</template>

<script setup lang="ts">
import { ref } from "vue";
import { Swiper, SwiperSlide } from "swiper/vue";
import { Navigation, Pagination, Scrollbar, A11y } from "swiper";
import userIcon from "../assets/img/icons/icons8-user-60.png";

import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import "swiper/css/scrollbar";

const modules = [Navigation, Pagination, Scrollbar, A11y];
const data = [
  {
    name: "John Doe",
    text: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nisi qui reprehenderit beatae nesciunt harum tempore veniam, perspiciatis quisquam commodi, reiciendis voluptas. Quasi inventore aperiam repellendus.",
  },
  {
    name: "Jessica Lawrence",
    text: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque placeat velit commodi eius hic adipisci! Vitae quos suscipit unde asperiores.",
  },
  {
    name: "Andrew Davidson",
    text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae eum ea aliquam quaerat animi, repellat, nemo vitae deleniti perferendis amet quasi.",
  },
  {
    name: "Selena Gomez",
    text: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque placeat velit commodi eius hic adipisci! Vitae quos suscipit unde asperiores.",
  },
];
</script>
