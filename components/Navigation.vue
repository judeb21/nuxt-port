<template>
  <header>
    <v-container
      class="d-flex flex-row align-center justify-space-between app--header"
    >
      <div>
        <NuxtLink
          to="/"
          class="homelink"
          :class="
            $vuetify.theme.dark
              ? 'text--black bg--white'
              : 'text--white bg--black'
          "
          >JB</NuxtLink
        >
        <NuxtLink
          to="/"
          :class="$vuetify.theme.dark ? 'text--white' : 'text--black'"
          >Jude Biose</NuxtLink
        >
      </div>
      <div class="d-flex flex-row align-center justify-space-between">
        <nav class="d-flex app--header__menuDesktop">
          <ul class="d-flex flex-row">
            <li v-for="(item, i) in items" :key="i">
              <NuxtLink
                :to="item.to"
                exact
                :class="$vuetify.theme.dark ? 'text--white' : 'text--black'"
              >
                {{ item.title }}
              </NuxtLink>
            </li>
          </ul>
        </nav>
      </div>
    </v-container>
  </header>
</template>
<script>
export default {
  data() {
    return {
      items: [
        {
          title: 'Project',
          to: '/inspire',
        },
        {
          title: 'About',
          to: '/about',
        },
      ],
    }
  },
}
</script>
