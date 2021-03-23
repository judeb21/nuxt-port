<template>
  <div class="app-project">
    <v-container>
      <div class="app-project--section">
        <div class="app-project--section__header">
          <h1>Here is a selected pick of some of my projects</h1>
        </div>
        <div class="app-project--section__body">
          <div
            v-for="(project, index) in projects"
            :key="project.id"
            class="app-project--section__content project"
            :class="
              index % 2 === 0 ? 'project--flex_left' : 'project--flex_right'
            "
          >
            <div class="app-project--section__content-header">
              <h1>{{ project.title }}</h1>
            </div>
            <div class="app-project--section__content-image">
              <picture>
                <source
                  :src="require(`~/assets/projects/${project.image}`)"
                  type="image/png"
                  :src-set="require(`~/assets/projects/${project.image}`)"
                />
                <img
                  :src="require(`~/assets/projects/${project.image}`)"
                  alt=""
                />
              </picture>
            </div>
          </div>
        </div>
      </div>
    </v-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      projects: [
        {
          title: 'Project 1',
          image: 'Design-Agency.png',
          description: '',
          to: '#',
        },
        {
          title: 'Project 2',
          image: 'Process-Management.png',
          description: '',
          to: '#',
        },
        {
          title: 'Project 3',
          image: 'Loan-Enterprise.png',
          description: '',
          to: '#',
        },
        {
          title: 'Project 4',
          image: 'Daycare-Hub.png',
          description: '',
          to: '#',
        },
        {
          title: 'Project 5',
          image: 'Enterprise.png',
          description: '',
          to: '#',
        },
      ],
    }
  },
}
</script>
