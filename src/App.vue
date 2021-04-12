<template>
  <v-app>
    <v-navigation-drawer app v-model="drawer" class="white">
      <v-list-item :to="profilePath">
        <v-list-item-avatar>
          <v-img src="https://randomuser.me/api/portraits/women/85.jpg"></v-img>
        </v-list-item-avatar>
      </v-list-item>
      <v-list-item>
        <v-list-item-content>
          <v-list-item-title class="title">
            Jane Doe
          </v-list-item-title>
          <v-list-item-subtitle>
            janedoe@gmail.com
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
      <v-divider></v-divider>

      <v-list
          dense
          nav
      >
        <v-list-item
            v-for="item in items"
            :key="item.title"
            :to="item.path"
            link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
        app
        color="primary"
        dark
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
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
      <router-view/>
    </v-main>
  </v-app>
</template>

<script>

export default {
  name: 'App',

  components: {},

  data: () => ({
    drawer: true,
    profilePath: '/profile',
    items: [
      {title: 'Home', icon: 'mdi-view-dashboard', path: '/'},
      {title: 'Objectifs', icon: 'mdi-alpha-a', path: '/idp'},
      {title: 'Sessions', icon: 'mdi-help-box', path: '/sessions'},
      {title: 'Diary', icon: 'mdi-webpack', path: '/diary'},
      {title: 'Progress', icon: 'mdi-weather-windy-variant ', path: '/progress'},
      {title: 'External Support', icon: 'mdi-unreal', path: '/externalsupport'},
      {title: 'Chat', icon: 'mdi-van-utility', path: '/chatcoach'},
      {title: '-------------------', icon: '', path: '/sqqs'},
      {title: 'External Support Feedback', icon: 'mdi-puzzle-check-outline', path: '/externalsupportfeedback'},
      {title: '-------------------', icon: '', path: '/sqqdsdss'},
      {title: 'Home Coach', icon: 'mdi-marker', path: '/homecoach'},
      {title: 'Chat Coach', icon: 'mdi-head-minus-outline', path: '/chatcoach'},
      {title: 'Profile Coach', icon: 'mdi-fan-off', path: '/profilecoach'},
      {title: 'Calendrier Coach', icon: 'mdi-briefcase-search-outline', path: '/calendarcoach'},
      {title: 'Ressources Coach', icon: 'mdi-android-debug-bridge', path: '/ressourcescoach'},
      {title: '-------------------', icon: '', path: '/zzzzz'},
      {title: 'Reporting (PM,PL)', icon: 'mdi-amazon ', path: '/reporting'},
    ],
    right: null,
  }),
};
</script>
