<template>
  <!-- Location -->
  <section class="bg-gray-100 py-8" id="location">
    <h1 class="text-2xl text-center font-bold mb-8">
      You can <span class="text-blue-main">find</span> us on
    </h1>

    <div class="max-w-5xl mx-auto">
      <GoogleMap
        :api-key="googleMapsApiKey"
        style="width: 100%; height: 500px"
        :center="center"
        :zoom="15"
      >
        <Marker :options="{ position: center }" />
      </GoogleMap>
    </div>
  </section>
</template>

<script setup lang="ts">
import { GoogleMap, Marker } from "vue3-google-map";

const googleMapsApiKey = import.meta.env.VITE_GOOGLE_MAPS_API_KEY;
const center = { lat: -6.1754, lng: 106.8272 };
</script>
