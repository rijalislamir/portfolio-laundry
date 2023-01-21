<template>
  <header>
    <nav
      :class="
        'bg-white fixed w-full flex items-center justify-center h-16 shadow-md transition-all -translate-y-full' +
        (showNavbar && ' translate-y-full')
      "
    >
      <div class="flex justify-between w-full max-w-[1000px]">
        <h1 class="text-xl font-bold">Logo</h1>

        <div class="flex gap-6">
          <ul class="flex gap-6">
            <li>Pricing</li>
            <li>Features</li>
          </ul>

          <span>|</span>

          <button>Contact Us</button>
        </div>
      </div>
    </nav>
  </header>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";
import Button from "./Button.vue";

const showNavbar = ref(true);
const lastScrollPosition = ref(window.pageYOffset);

onMounted(() => {
  lastScrollPosition.value = window.pageYOffset;
  window.addEventListener("scroll", onScroll);
});

onUnmounted(() => {
  window.removeEventListener("scroll", onScroll);
});

const onScroll = () => {
  if (window.pageYOffset < 0) return;
  if (Math.abs(window.pageYOffset - lastScrollPosition.value) < 5) return;

  showNavbar.value = window.pageYOffset <= lastScrollPosition.value;
  lastScrollPosition.value = window.pageYOffset;
};
</script>
