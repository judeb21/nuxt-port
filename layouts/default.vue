<template>
  <v-app dark>
    <Nav></Nav>
    <v-main>
      <v-container>
        <nuxt />
      </v-container>
    </v-main>
    <div id="app-jbot" class="app-jbot" :class="{ Active: isActive }">
      <div class="app-jbot__header o-flexy">
        <div class="o-flexy__item">
          <img
            class="app-jbot__avatar"
            src="~/assets/man.svg"
            alt="Pic of Sean"
          />
        </div>
        <div class="o-flexy__block">
          <span class="app-jbot__name">Contact Jude</span>
          <span class="app-jbot__desc">Please send me a message!</span>
        </div>
        <div class="o-flexy__item">
          <button
            class="app-jbot__close"
            data-button="close"
            aria-label="Close Modal"
            @click="toggleContact()"
          >
            <svg
              width="12"
              height="12"
              viewBox="0 0 12 12"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M7.41425 6.00025L11.7072 1.70725C12.0982 1.31625 12.0982 0.68425 11.7072 0.29325C11.3162 -0.09775 10.6843 -0.09775 10.2933 0.29325L6.00025 4.58625L1.70725 0.29325C1.31625 -0.09775 0.68425 -0.09775 0.29325 0.29325C-0.09775 0.68425 -0.09775 1.31625 0.29325 1.70725L4.58625 6.00025L0.29325 10.2933C-0.09775 10.6843 -0.09775 11.3162 0.29325 11.7072C0.48825 11.9022 0.74425 12.0002 1.00025 12.0002C1.25625 12.0002 1.51225 11.9022 1.70725 11.7072L6.00025 7.41425L10.2933 11.7072C10.4883 11.9022 10.7442 12.0002 11.0002 12.0002C11.2562 12.0002 11.5122 11.9022 11.7072 11.7072C12.0982 11.3162 12.0982 10.6843 11.7072 10.2933L7.41425 6.00025Z"
                fill="white"
              ></path>
            </svg>
          </button>
        </div>
      </div>
    </div>
    <button
      class="contact-btn"
      :class="
        $vuetify.theme.dark ? 'text--black bg--white' : 'text--white bg--black'
      "
      @click="toggleContact()"
    >
      <svg
        width="52"
        height="52"
        viewBox="0 0 52 52"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="M27.1245 15H24.875C18.869 15 14 19.6557 14 25.3986C14 31.1419 18.869 36.0251 24.875 36.0251H27.1245C28.5007 36.0251 29.8164 35.5501 31.0277 35.1042L34.7099 36.9196C35.5358 37.229 36.4153 36.6034 36.3434 35.7578L36.1004 31.4793C37.7493 29.6565 38 27.9982 38 25.3986C38 19.6557 33.131 15 27.1245 15ZM34.1036 31.5927C34.0733 31.0585 34.2583 30.5344 34.6172 30.1376C35.7262 28.9116 36 27.9263 36 25.3986C36 20.7808 32.0459 17 27.1245 17H24.875C19.954 17 16 20.7808 16 25.3986C16 30.0739 20.0109 34.0251 24.875 34.0251H27.1245C27.9586 34.0251 28.7311 33.8185 30.3367 33.2274C30.851 33.038 31.4205 33.068 31.9121 33.3104L34.2672 34.4715L34.1036 31.5927ZM34.3467 35.8712L34.3439 35.8218C34.3443 35.8381 34.3452 35.8546 34.3467 35.8712Z"
          fill="white"
        ></path>
      </svg>
    </button>
  </v-app>
</template>
<script>
import Nav from '~/components/Navigation.vue'
export default {
  components: {
    Nav,
  },
  data() {
    return {
      isActive: false,
    }
  },
  methods: {
    toggleContact() {
      this.isActive = !this.isActive
    },
  },
}
</script>
