<template>
  <div class="app--wrapper">
    <div class="app--wrapper__home">
      <div class="app--wrapper__homewords">
        <div class="app--homewords__space">
          <div class="app--homewords__before"></div>
          <div v-for="head in header" :key="head.id" class="d-flex">
            <div
              v-for="headLayout in head.layerOne"
              :key="headLayout.id"
              class="app--homewords-wordWrapper"
            >
              <div class="app-homewords-word">
                {{ headLayout }}
              </div>
            </div>
          </div>
          <div class="app--homewords-wordWrapper">
            <div class="app-homewords-e">
              <img src="~/assets/handWave.svg" alt="hand wave" />
            </div>
          </div>
        </div>
        <div class="app--homewords__space">
          <div class="app--homewords__before"></div>
          <div v-for="head in header" :key="head.id" class="d-flex js__trigger">
            <div
              v-for="headLayout in head.layerTwo"
              :key="headLayout.id"
              class="app--homewords-wordWrapper"
            >
              <div class="app-homewords-word">
                {{ headLayout }}
              </div>
            </div>
          </div>
        </div>
        <div class="app--homewords__space">
          <div class="app--homewords__before"></div>
          <div v-for="head in header" :key="head.id" class="d-flex js_trigger">
            <div
              v-for="headLayout in head.layerThree"
              :key="headLayout.id"
              class="app--homewords-wordWrapper"
            >
              <div class="app-homewords-word">
                {{ headLayout }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="toggleWrapper">
      <input
        v-if="$vuetify.theme.dark"
        id="dn"
        type="checkbox"
        class="dn"
        checked
        @click="toggleTheme"
      />
      <input v-else id="dn" type="checkbox" class="dn" @click="toggleTheme" />
      <label for="dn" class="toggle">
        <span class="toggle__handler">
          <span class="crater crater--1"></span>
          <span class="crater crater--2"></span>
          <span class="crater crater--3"></span>
        </span>
        <span class="star star--1"></span>
        <span class="star star--2"></span>
        <span class="star star--3"></span>
        <span class="star star--4"></span>
        <span class="star star--5"></span>
        <span class="star star--6"></span>
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    header: Array,
  },
  mounted() {
    const theme = localStorage.getItem('useDarkTheme')
    if (theme) {
      this.$vuetify.theme.dark = true
    } else this.$vuetify.theme.dark = false
  },
  methods: {
    toggleTheme() {
      setTimeout(() => {
        this.$vuetify.theme.dark = !this.$vuetify.theme.dark
        localStorage.setItem(
          'useDarkTheme',
          this.$vuetify.theme.dark.toString()
        )
      }, 300)
    },
  },
}
</script>
