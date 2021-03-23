<template>
  <div>
    <Header :header="heading" class="home__wrapper" />
    <Project />
    <Footer />
  </div>
  <!-- <v-row justify="center" align="center">
    <v-col cols="12" sm="8" md="6">
      <div class="text-center">
        <logo />
        <vuetify-logo />
      </div>
      <v-card>
        <v-card-title class="headline">
          Welcome to the Vuetify + Nuxt.js template
        </v-card-title>
        <v-card-text>
          <p>
            Vuetify is a progressive Material Design component framework for
            Vue.js. It was designed to empower developers to create amazing
            applications.
          </p>
          <p>
            For more information on Vuetify, check out the
            <a
              href="https://vuetifyjs.com"
              target="_blank"
              rel="noopener noreferrer"
            >
              documentation </a
            >.
          </p>
          <p>
            If you have questions, please join the official
            <a
              href="https://chat.vuetifyjs.com/"
              target="_blank"
              rel="noopener noreferrer"
              title="chat"
            >
              discord </a
            >.
          </p>
          <p>
            Find a bug? Report it on the github
            <a
              href="https://github.com/vuetifyjs/vuetify/issues"
              target="_blank"
              rel="noopener noreferrer"
              title="contribute"
            >
              issue board </a
            >.
          </p>
          <p>
            Thank you for developing with Vuetify and I look forward to bringing
            more exciting features in the future.
          </p>
          <div class="text-xs-right">
            <em><small>&mdash; John Leider</small></em>
          </div>
          <hr class="my-3" />
          <a
            href="https://nuxtjs.org/"
            target="_blank"
            rel="noopener noreferrer"
          >
            Nuxt Documentation
          </a>
          <br />
          <a
            href="https://github.com/nuxt/nuxt.js"
            target="_blank"
            rel="noopener noreferrer"
          >
            Nuxt GitHub
          </a>
        </v-card-text>
        <v-card-actions class="toggle-box">
          <v-spacer />
          <div class="toggleWrapper">
            <input
              v-if="$vuetify.theme.dark"
              id="dn"
              type="checkbox"
              class="dn"
              checked
              @click="toggleTheme"
            />
            <input
              v-else
              id="dn"
              type="checkbox"
              class="dn"
              @click="toggleTheme"
            />
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
          <v-btn color="primary" nuxt to="/inspire"> Continue </v-btn>
        </v-card-actions>
      </v-card>
    </v-col>
  </v-row> -->
</template>

<script>
// import Logo from '~/components/Logo.vue'
// import VuetifyLogo from '~/components/VuetifyLogo.vue'
import Header from '~/components/Header.vue'
import Project from '~/components/Index/Project.vue'
import Footer from '~/components/Footer.vue'

export default {
  components: {
    // Logo,
    // VuetifyLogo,
    Header,
    Project,
    Footer,
  },
  data() {
    return {
      heading: [
        {
          layerOne: ['H', 'e', 'l', 'l', 'o'],
        },
        {
          layerTwo: ['M', 'y', ' ', 'N', 'a', 'm', 'e', ' ', 'i', 's'],
        },
        {
          layerThree: ['J', 'u', 'd', 'e', ' ', 'B', 'i', 'o', 's', 'e'],
        },
      ],
    }
  },
  mounted() {
    const theme = localStorage.getItem('useDarkTheme')
    if (theme) {
      this.$vuetify.theme.dark = true
    } else this.$vuetify.theme.dark = false
  },
  methods: {
    toggleTheme() {
      this.$vuetify.theme.dark = !this.$vuetify.theme.dark
      localStorage.setItem('useDarkTheme', this.$vuetify.theme.dark.toString())
    },
  },
}
</script>
