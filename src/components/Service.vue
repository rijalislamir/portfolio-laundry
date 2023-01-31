<template>
  <!-- Service -->
  <section class="bg-gray-100 p-8">
    <div class="max-w-5xl mx-auto">
      <h1 class="text-2xl text-center font-bold mb-8">
        Our <span class="text-blue-main">service</span> is
      </h1>

      <div
        v-for="(service, i) in services"
        class="flex gap-8 items-start mb-8 relative"
      >
        <img :src="service.src" class="w-12 h-12 relative z-10" />

        <div
          class="-ml-0.5 absolute mt-0.5 top-12 left-6 w-px border-l-4 border-dotted border-gray-300 h-full"
          v-if="i !== services.length - 1"
          aria-hidden="true"
        ></div>

        <div class="flex flex-col gap-4">
          <h2 class="text-lg font-bold">{{ service.title }}</h2>
          <p class="font-thin">{{ service.description }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import twentyFourIcon from "../assets/img/icons/customer-service-24-hours.svg";
import openShopIcon from "../assets/img/icons/open-shop.svg";
import medalQualityIcon from "../assets/img/icons/medal-quality.svg";
import discountIcon from "../assets/img/icons/discount.svg";
import truckIcon from "../assets/img/icons/truck.svg";

const services = [
  {
    src: twentyFourIcon,
    title: "24 hours service",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos asperiores adipisci voluptatem aliquid consequuntur pariatur reiciendis.",
  },
  {
    src: openShopIcon,
    title: "Put/pick your cloth at any day",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod hic ut sunt? Unde porro dignissimos aut blanditiis rerum.",
  },
  {
    src: medalQualityIcon,
    title: "Soft and clean laundry",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti laborum corporis modi doloremque non nostrum quis beatae itaque sint cum.",
  },
  {
    src: discountIcon,
    title: "Get a discount for loyal customer",
    description:
      "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae ex inventore sed, necessitatibus velit deleniti laudantium?",
  },
  {
    src: truckIcon,
    title: "Put the laundry or pick-up by us",
    description:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum quo soluta similique iure autem minus repudiandae quae? Quasi, nihil!",
  },
];
</script>
