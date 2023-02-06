<template>
  <!-- Testimonial -->
  <section class="py-8">
    <h1 class="text-center text-2xl font-bold px-6">
      What <span class="text-blue-main">people</span> say
    </h1>

    <div class="max-w-5xl mx-auto">
      <Swiper
        :modules="modules"
        :slides-per-view="screenWidth < 820 ? 1 : 2"
        :space-between="10"
        :grab-cursor="true"
        :pagination="{ clickable: true }"
      >
        <SwiperSlide v-for="person in data" class="flex justify-center">
          <div class="text-center mx-8 my-4 max-w-[463px]">
            <p
              class="bg-gray-100 p-6 rounded-tl-3xl rounded-br-3xl rounded-tr-xl rounded-bl-xl italic text-gray-600"
            >
              {{ '"' + person.text + '"' }}
            </p>

            <div class="flex items-center flex-start gap-4 mt-4">
              <div
                class="bg-gradient-to-b from-blue-main to-blue-600 w-12 h-12 rounded-full flex items-center justify-center"
              >
                <img
                  v-if="person.photo"
                  :src="person.photo"
                  class="w-full"
                  alt="user-photo"
                />
                <img v-else :src="userIcon" class="w-8" alt="user-photo" />
              </div>

              <div class="flex flex-col items-start">
                <span class="font-bold text-lg inline-block ml-1">
                  {{ person.name }}
                </span>

                <div class="flex items-center justify-center">
                  <svg
                    class="w-6 h-6 text-orange-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                    />
                  </svg>
                  <svg
                    class="w-6 h-6 text-orange-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                    />
                  </svg>
                  <svg
                    class="w-6 h-6 text-orange-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                    />
                  </svg>
                  <svg
                    class="w-6 h-6 text-orange-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                    />
                  </svg>
                  <svg
                    class="w-6 h-6 text-orange-400"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                    />
                  </svg>
                </div>
              </div>
            </div>
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

const screenWidth = ref(window.innerWidth);
const modules = [Pagination, Scrollbar, A11y];
const data = [
  {
    photo:
      "https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/9/avatar-2.jpg",
    name: "John Doe",
    text: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nisi qui reprehenderit beatae nesciunt harum tempore veniam, perspiciatis quisquam commodi.",
  },
  {
    photo:
      "https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/9/avatar-1.jpg",
    name: "Jessica Lawrence",
    text: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque placeat velit commodi eius hic adipisci! Vitae quos suscipit unde asperiores.",
  },
  {
    photo: null,
    name: "Andrew Davidson",
    text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae eum ea aliquam quaerat animi, repellat, nemo vitae deleniti perferendis amet quasi.",
  },
  {
    photo:
      "https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/9/avatar-3.jpg",
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
