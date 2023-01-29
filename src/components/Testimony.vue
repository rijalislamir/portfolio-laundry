<template>
  <section class="bg-gray-100 py-8">
    <h1 class="text-center text-2xl font-bold px-6">
      What <span class="text-blue-main">people</span> say
    </h1>

    <div class="max-w-[1000px] mx-auto">
      <Swiper
        :modules="modules"
        :slides-per-view="screenWidth < 1000 ? 1 : 2"
        :space-between="10"
        :pagination="{ clickable: true }"
      >
        <SwiperSlide v-for="person in data" class="flex justify-center">
          <div
            class="text-center p-6 mx-8 my-4 max-w-[463px] bg-gray-200 rounded-3xl h-full"
          >
            <div
              class="bg-blue-main w-24 h-24 rounded-full m-auto flex items-center justify-center"
            >
              <img :src="userIcon" alt="user-photo" />
            </div>

            <span class="font-bold text-lg inline-block p-4">
              {{ person.name }}
            </span>

            <p class="italic text-gray-600">
              {{ person.text }}
            </p>
          </div>
        </SwiperSlide>
      </Swiper>
    </div>
  </section>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";
import { Swiper, SwiperSlide } from "swiper/vue";
import { Pagination, Scrollbar, A11y } from "swiper";
import userIcon from "../assets/img/icons/icons8-user-60.png";

import "swiper/css";
import "swiper/css/pagination";
import "swiper/css/scrollbar";

const screenWidth = ref(0);
const modules = [Pagination, Scrollbar, A11y];
const data = [
  {
    name: "John Doe",
    text: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nisi qui reprehenderit beatae nesciunt harum tempore veniam, perspiciatis quisquam commodi.",
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

const onWidthChange = () => (screenWidth.value = window.innerWidth);

onMounted(() => {
  window.addEventListener("resize", onWidthChange);
});

onUnmounted(() => {
  window.removeEventListener("resize", onWidthChange);
});
</script>
