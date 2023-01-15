<template>
  <nav>
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
</template>

<style scoped>
nav {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2);
  display: flex;
  align-items: center;
  justify-content: center;
  height: 4rem;
  position: fixed;
  width: 100%;
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
import Button from "./Button.vue";
</script>
