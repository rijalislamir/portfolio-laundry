<template>
  <section class="bg-gray-100 pt-4">
    <h1 class="text-center text-3xl font-bold px-6">What people say</h1>

    <div class="flex justify-center pt-4">
      <div class="relative w-[900px] h-[400px] overflow-hidden">
        <div
          v-for="(person, index) in data"
          v-show="currentSlide === index"
          class="p-6 bg-gray-200 rounded-3xl text-center absolute left-0 top-0 right-0 mx-[25.02px]"
        >
          <div
            class="bg-slate-900 w-24 h-24 rounded-full m-auto flex items-center justify-center"
          >
            <img :src="userIcon" alt="user-photo" />
          </div>

          <span class="inline-block font-bold p-4">
            {{ person.name }}
          </span>

          <p class="italic">
            {{ person.text }}
          </p>
        </div>

        <div>
          <button
            class="absolute bg-black/20 p-2 top-[calc(50%_-_20px)] left-0 text-3xl"
            @click="prevSlide"
          >
            &#8249;
          </button>
          <button
            class="absolute bg-black/20 p-2 top-[calc(50%_-_20px)] right-0 text-3xl"
            @click="nextSlide"
          >
            &#8250;
          </button>
        </div>
      </div>
    </div>

    <div class="flex justify-center gap-4 py-6">
      <button
        v-for="(_, index) in data"
        :class="
          'rounded-full w-4 h-4 ' +
          (currentSlide === index ? 'bg-black' : 'bg-gray-300')
        "
        @click="goToSlide(index)"
      ></button>
    </div>
  </section>
</template>

<script setup lang="ts">
import { ref } from "vue";
import userIcon from "../assets/img/icons/icons8-user-60.png";

const currentSlide = ref(0);
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

const nextSlide = () => {
  currentSlide.value =
    currentSlide.value === data.length - 1 ? 0 : currentSlide.value + 1;
};

const prevSlide = () => {
  currentSlide.value =
    currentSlide.value === 0 ? data.length - 1 : currentSlide.value - 1;
};

const goToSlide = (index: number) => {
  currentSlide.value = index;
};
</script>
