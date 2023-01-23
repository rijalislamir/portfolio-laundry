<template>
  <div class="flex justify-center">
    <div class="relative w-[900px] h-[400px] overflow-hidden">
      <CarouselItem
        v-for="(slide, index) in slides"
        :slide="slide"
        :current-slide="currentSlide"
        :key="`item-${index}`"
        :index="index"
        :direction="direction"
        @mouseenter="stopSlideTimer"
        @mouseout="startSlideTimer"
      />
      <CarouselControls @prev="prev" @next="next" />
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from "vue";
import CarouselItem from "./CarouselItem.vue";
import CarouselControls from "./CarouselControls.vue";

const props = defineProps<{
  slides: Array<string>;
}>();

const currentSlide = ref(0);
const slideInterval: any = ref(null);
const direction = ref("right");

const setCurrentSlide = (index: number) => {
  currentSlide.value = index;
};

const prev = () => {
  const index =
    currentSlide.value > 0 ? currentSlide.value - 1 : props.slides.length - 1;
  setCurrentSlide(index);
  direction.value = "left";
  startSlideTimer();
};

const _next = () => {
  const index =
    currentSlide.value < props.slides.length - 1 ? currentSlide.value + 1 : 0;
  setCurrentSlide(index);
  direction.value = "right";
};

const next = () => {
  _next();
  startSlideTimer();
};

const startSlideTimer = () => {
  stopSlideTimer();
  slideInterval.value = setInterval(() => {
    _next();
  }, 5000);
};

const stopSlideTimer = () => {
  clearInterval(slideInterval.value);
};

onMounted(() => {
  startSlideTimer();
});

onUnmounted(() => {
  stopSlideTimer();
});
</script>
