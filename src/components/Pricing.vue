<template>
  <!-- Pricing -->
  <section class="bg-gray-200">
    <div class="max-w-5xl mx-auto px-8">
      <div class="text-center pt-8">
        <h1 class="text-2xl font-bold">
          <span class="text-blue-main">Pricing</span>
        </h1>
        <p class="font-thin text-sm">
          Lorem ipsum dolor sit amet consectetur adipisicing elit.
        </p>
      </div>

      <div
        class="flex flex-col items-center sm:flex-row sm:justify-center py-8 gap-8"
      >
        <div
          v-for="pricing in data"
          class="bg-white text-center rounded-lg shadow-md p-4 w-64"
        >
          <h2 class="font-semibold">{{ pricing.name }}</h2>

          <div class="p-4">
            <span>$</span>
            <span class="text-5xl font-bold">
              {{ pricing.pricePerKg }}
            </span>
            <span>/kg</span>
          </div>

          <div class="font-light text-sm max-w-[200px] mx-auto">
            <ul class="flex flex-col gap-2 text-left">
              <li class="flex gap-2">
                <svg
                  class="w-5 h-5 text-green-500"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  />
                </svg>

                <span> Soft and clean </span>
              </li>

              <li class="flex gap-2">
                <svg
                  class="w-5 h-5 text-green-500"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  />
                </svg>

                <span>
                  {{ pricing.time }}
                </span>
              </li>

              <li class="flex gap-2">
                <svg
                  class="w-5 h-5 text-green-500"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  />
                </svg>

                <span> Get {{ pricing.coupon }} coupoun(s) </span>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <p class="font-thin text-xs text-center text-gray-500 pb-8">
        Exchange 10 coupons for 1 kg
      </p>
    </div>
  </section>
</template>

<script setup lang="ts">
const data = [
  {
    name: "Regular",
    pricePerKg: 1,
    time: "2 - 4 days",
    coupon: 1,
  },
  {
    name: "Premium",
    pricePerKg: 2,
    time: "1 days",
    coupon: 2,
  },
];
</script>
