<template>
  <header>
    <nav
      :class="
        'bg-white p-6 fixed z-50 w-full flex items-center justify-center h-16 transition-all duration-500' +
        (showNavbar || showMobileMenu ? '' : ' -translate-y-full') +
        (lastScrollPosition < 5 && !showMobileMenu
          ? ' bg-transparent'
          : ' shadow-md')
      "
    >
      <div class="flex justify-between w-full max-w-5xl">
        <h1 class="text-xl text-blue-main font-bold flex items-center">Logo</h1>

        <div class="hidden sm:flex">
          <ul
            :class="
              'flex gap-12 font-semibold transition-all duration-500' +
              (lastScrollPosition < 5 && !showMobileMenu ? ' text-white' : '')
            "
          >
            <li>About</li>
            <li>Pricing</li>
            <li>
              <button>Contact Us</button>
            </li>
          </ul>
        </div>

        <div class="flex sm:hidden text-4xl">
          <button @click="toggleBurgerMenu">
            <span
              :class="
                `block relative before:w-8 before:bg-blue-main before:h-[3px] before:transition-all before:content-[''] before:absolute before:left-0 before:bottom-2 w-8 h-[3px] transition-all after:w-8 after:bg-blue-main after:h-[3px] after:transition-all after:content-[''] after:absolute after:left-0 after:top-2 ` +
                (showMobileMenu
                  ? 'bg-white before:translate-y-[8px] after:-translate-y-[8px] before:rotate-45 after:-rotate-45'
                  : 'bg-blue-main')
              "
            >
            </span>
          </button>
        </div>
      </div>
    </nav>

    <div
      :class="
        'bg-blue-main fixed z-40 flex flex-col text-white items-center justify-center bg-slate-900 left-0 top-0 right-0 bottom-0 transition-all -translate-y-full ' +
        (showMobileMenu ? 'translate-y-0' : '')
      "
    >
      <ul class="flex flex-col justify-center items-center gap-16">
        <li class="text-4xl font-bold">Pricing</li>
        <li class="text-4xl font-bold">Features</li>
        <li class="text-4xl font-bold">Contact Us</li>
      </ul>
    </div>
  </header>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";

const showNavbar = ref(true);
const showMobileMenu = ref(false);
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

const toggleBurgerMenu = () => {
  showMobileMenu.value = !showMobileMenu.value;
  document.documentElement.style.overflow = showMobileMenu.value
    ? "hidden"
    : "auto";
};
</script>
