<template>
  <section id="contact-us">
    <div class="max-w-5xl flex flex-col mx-auto py-6">
      <div class="text-center">
        <h1 class="text-2xl font-bold">
          Get in <span class="text-blue-main">touch</span> with us
        </h1>

        <p class="font-thin text-sm px-8">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, at!
        </p>
      </div>

      <div class="flex flex-col gap-4 p-4 lg:rounded-lg lg:shadow-xl">
        <div class="flex flex-col">
          <label for="name">Name</label>
          <input
            type="text"
            name="name"
            id="name"
            class="p-2 border rounded-md"
            autocomplete="off"
          />
        </div>

        <div class="flex flex-col">
          <label for="email">Email</label>
          <input
            type="email"
            name="email"
            id="email"
            class="p-2 border rounded-md"
            autocomplete="off"
          />
        </div>

        <button
          class="bg-blue-main text-white px-6 py-3 mt-6 rounded-md w-full"
        >
          Send message
        </button>
      </div>
    </div>
  </section>
</template>
