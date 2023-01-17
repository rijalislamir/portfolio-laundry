<template>
  <header>
      <nav :class="(showNavbar && 'show')">
        <div class="nav-container">
          <h1>Logo</h1>
          
          <div class="right-nav">
            <ul>
              <li>Pricing</li>
              <li>Features</li>
            </ul>
            
            <span>|</span>
            
            <Button>CONTACT US</Button>
          </div>
        </div>
      </nav>
  </header>
</template>

<style scoped>
nav {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2);
  background-color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 4rem;
  position: fixed;
  width: 100%;
  transition: 1s;
  translate: 0 -100px;
  opacity: 0;
}

.show {
  translate: 0;
  opacity: 1;
}

.nav-container {
  display: flex;
  justify-content: space-between;
  width: 100%;
  max-width: 1000px;
}

.right-nav {
  display: flex;
  line-height: 36px;
  gap: 24px;
  text-align: center;
}

ul {
  display: flex;
  gap: 24px;
  list-style: none;
}
</style>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";
import Button from "./Button.vue";

const showNavbar = ref(true);
const lastScrollPosition = ref(window.pageYOffset);

onMounted(() => {
  lastScrollPosition.value = window.pageYOffset;
  window.addEventListener('scroll', onScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', onScroll)
})

const onScroll = () => {
  if (window.pageYOffset < 0) return;
  if (Math.abs(window.pageYOffset - lastScrollPosition.value) < 5) return;
  
  showNavbar.value = window.pageYOffset <= lastScrollPosition.value;
  lastScrollPosition.value = window.pageYOffset;
}
</script>
