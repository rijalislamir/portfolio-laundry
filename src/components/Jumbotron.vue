<template>
  <section>
    <div class="wrapper">
      <div>
        <h1>Find Your Best Laundry</h1>
        <p class="sub-text">
          Experience your best feeling of smoothness from laundry.
        </p>

        <div class="download-app">
          <button class="download-btn">
            <span class="google-play-icon"></span>
            <span>Download the App</span>
          </button>

          <button class="download-btn">
            <span class="apple-icon"></span>
            <span>Download the App</span>
          </button>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
section {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 4rem;
  height: 100vh;
}

.wrapper {
  display: flex;
  justify-content: space-between;
  max-width: 1000px;
  width: 100%;
}

.wrapper div {
  flex-basis: 0;
  flex-grow: 1;
}

h1 {
  display: inline;
  background: linear-gradient(120deg, #00dbde, #fc00ff);
  background-clip: text;
  font-size: 72px;
  line-height: 4.5rem;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.sub-text {
  margin: 2rem 0;
}

.download-app {
  display: flex;
  gap: 2rem;
}

.download-app div {
  display: flex;
  align-items: center;
}

.download-btn {
  background-color: #0078d7;
  border: none;
  border-radius: 2rem;
  color: white;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-weight: 100;
  padding: 1rem 1.5rem;
}

.google-play-icon {
  content: url("../assets/img/icons/google-play-white.png");
  display: inline-block;
  width: 24px;
}

.apple-icon {
  content: url("../assets/img/icons/apple-white.png");
  display: inline-block;
  width: 24px;
}
</style>
