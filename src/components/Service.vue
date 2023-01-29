<template>
  <!-- Service -->
  <section class="p-8">
    <h1 class="text-2xl text-center font-bold mb-8">
      Our <span class="text-blue-main">service</span> is
    </h1>

    <div v-for="service in services" class="flex gap-8 items-center mb-6">
      <img :src="service.src" class="w-16 h-16" />
      <p class="text-sm">{{ service.text }}</p>
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
    text: "24 hours service",
  },
  {
    src: openShopIcon,
    text: "Put/pick your cloth at any day",
  },
  {
    src: medalQualityIcon,
    text: "Soft and clean laundry",
  },
  {
    src: discountIcon,
    text: "Get a discount for loyal customer",
  },
  {
    src: truckIcon,
    text: "Put the laundry or pick-up by us",
  },
];
</script>
