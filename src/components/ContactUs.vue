<template>
  <!-- Contact Us -->
  <section id="contact-us">
    <div class="max-w-5xl flex flex-col mx-auto py-6 lg:flex-row lg:gap-8">
      <div
        class="text-center basis-0 grow lg:py-6 lg:flex lg:flex-col lg:justify-between"
      >
        <div>
          <h1 class="text-2xl font-bold lg:text-4xl">
            Get in <span class="text-blue-main">touch</span> with us
          </h1>

          <p class="font-thin text-sm px-8 lg:p-0">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores,
            at!
          </p>
        </div>

        <div
          class="flex flex-col justify-center p-4 pt-8 sm:flex-row sm:gap-8 lg:justify-between"
        >
          <div class="flex gap-4">
            <svg
              class="flex-shrink-0 w-6 h-6 text-blue-600"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="1"
                d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
              />
            </svg>

            <p>(316) 555-0116</p>
          </div>

          <div class="flex gap-4">
            <svg
              class="flex-shrink-0 w-6 h-6 text-blue-600"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="1"
                d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
              />
            </svg>
            <p>support@example.com</p>
          </div>
        </div>
      </div>

      <div
        class="flex flex-col gap-4 p-4 basis-0 grow lg:rounded-lg lg:shadow-xl"
      >
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
