<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://www.mineleadership.eu/wp-content/themes/sage-8.5.1/dist/images/Logo_mine_leadership_6dd9e075.svg"
          transition="scale-transition"
          width="70"
        />


      </div>

      <v-spacer></v-spacer>


    </v-app-bar>

    <v-main>
      <create-project-stepper/>
    </v-main>
  </v-app>
</template>

<script>
import CreateProjectStepper from "./components/creationProject/CreateProjectStepper";

export default {
  name: 'App',

  components: {
    CreateProjectStepper,
  },

  data: () => ({

  }),
};
</script>
