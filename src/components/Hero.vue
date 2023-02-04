<template>
  <section
    class="flex justify-center items-center h-screen bg-[url('/src/assets/img/laundry.jpg')] bg-gray-500 bg-blend-multiply bg-center"
  >
    <div class="flex flex-col justify-center items-center">
      <h1 class="text-6xl text-blue-main font-bold text-center px-6">
        Your Laundry
      </h1>
      <p class="my-8 text-center text-white px-6">
        Experience your best feeling of
        <span class="whitespace-nowrap"
          >smoothness from
          <span class="font-bold text-blue-main">LAUNDRY</span>.</span
        >
      </p>

      <div class="flex flex-col gap-4 sm:flex-row">
        <button
          class="bg-blue-main hover:bg-gradient-to-b from-blue-main to-blue-600 border-0 rounded-[2rem] flex items-center gap-2 text-white py-4 px-6"
        >
          <span class="google-play-icon w-6"></span>
          <span class="font-medium">Play Store</span>
        </button>

        <button
          class="bg-blue-main hover:bg-gradient-to-b from-blue-main to-blue-600 border-0 rounded-[2rem] flex items-center gap-2 text-white py-4 px-6"
        >
          <span class="apple-icon w-6"></span>
          <span class="font-medium">App Store</span>
        </button>
      </div>
    </div>
  </section>
</template>

<style scoped>
.google-play-icon {
  content: url("../assets/img/icons/google-play-white.png");
}

.apple-icon {
  content: url("../assets/img/icons/apple-white.png");
}
</style>
