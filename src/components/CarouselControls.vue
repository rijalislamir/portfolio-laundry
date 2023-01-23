<template>
  <button
    class="bg-black/50 border-0 inline-block absolute h-[50px] w-[70px] top-[calc(50%_-_25px)] text-gray-100 cursor-pointer left-0"
    @click="emits('prev')"
  >
    Prev
  </button>
  <button
    class="bg-black/50 border-0 inline-block absolute h-[50px] w-[70px] top-[calc(50%_-_25px)] text-gray-100 cursor-pointer right-0"
    @click="emits('next')"
  >
    Next
  </button>
</template>

<script setup lang="ts">
const emits = defineEmits(["prev", "next"]);
</script>
