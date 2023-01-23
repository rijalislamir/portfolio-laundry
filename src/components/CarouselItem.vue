<template>
  <Transition :name="`${direction}-slide`">
    <div
      class="absolute inset-0"
      v-show="currentSlide === index"
      @mouseenter="emits('mouseenter')"
      @mouseout="emits('mouseout')"
    >
      <img :src="slide" />
    </div>
  </Transition>
</template>

<style scoped>
.left-slide-enter-active,
.left-slide-leave-active,
.right-slide-enter-active,
.right-slide-leave-active {
  transition: all 1s ease-in-out;
}

.left-slide-enter-from {
  transform: translateX(-100%);
}

.left-slide-leave-to {
  transform: translateX(100%);
}

.right-slide-enter-from {
  transform: translateX(100%);
}

.right-slide-leave-to {
  transform: translateX(-100%);
}
</style>

<script setup lang="ts">
defineProps<{
  slide: string;
  index: number;
  currentSlide: number;
  direction: string;
}>();

const emits = defineEmits(["mouseenter", "mouseout"]);
</script>
