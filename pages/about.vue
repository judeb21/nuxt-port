<template>
  <div>
    <Header :header="heading" class="about__wrapper" />
    <About />
    <Footer />
  </div>
</template>

<script>
import Header from '~/components/Header.vue'
import Footer from '~/components/Footer.vue'
import About from '~/components/About/About.vue'

export default {
  components: {
    Header,
    Footer,
    About,
  },
  data() {
    return {
      heading: [
        {
          layerOne: ['H', 'e', 'y'],
        },
        {
          layerTwo: ['Y', 'o', 'u', ' ', 'F', 'o', 'u', 'n', 'd'],
        },
        {
          layerThree: ['M', 'e', '!'],
        },
      ],
    }
  },
}
</script>
