<template>
  <section class="min-h-screen bg-gray-100 p-4">
    <h1 class="text-center text-4xl font-bold">Testimony</h1>

    <div class="flex flex-col gap-6 p-4 max-w-[1000px] m-auto">
      <div class="p-6 bg-gray-200 rounded-3xl text-center">
        <div
          class="bg-slate-900 w-24 h-24 rounded-full m-auto flex items-center justify-center"
        >
          <img :src="userIcon" alt="user-photo" />
        </div>
        <span class="inline-block font-semibold p-4">John Doe</span>
        <p class="italic text-left">
          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nisi qui
          reprehenderit beatae nesciunt harum tempore veniam, perspiciatis
          quisquam commodi, reiciendis voluptas. Quasi inventore aperiam
          repellendus.
        </p>
      </div>

      <div class="p-6 bg-gray-200 rounded-3xl text-center">
        <div
          class="bg-slate-900 w-24 h-24 rounded-full m-auto flex items-center justify-center"
        >
          <img :src="userIcon" alt="user-photo" />
        </div>
        <span class="inline-block font-semibold p-4">Jessica Lawrence</span>
        <p class="italic text-left">
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque
          placeat velit commodi eius hic adipisci! Vitae quos suscipit unde
          asperiores.
        </p>
      </div>

      <div class="p-6 bg-gray-200 rounded-3xl text-center">
        <div
          class="bg-slate-900 w-24 h-24 rounded-full m-auto flex items-center justify-center"
        >
          <img :src="userIcon" alt="user-photo" />
        </div>
        <span class="inline-block font-semibold p-4">Andrew Davidson</span>
        <p class="italic text-left">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur
          molestiae eum ea aliquam quaerat animi, repellat, nemo vitae deleniti
          perferendis amet quasi.
        </p>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import userIcon from "../assets/img/icons/icons8-user-60.png";
</script>
