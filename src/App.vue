<template>
    <v-app>
        <v-navigation-drawer app  v-model="drawer" class="white">
            <v-list-item  :to="profilePath">
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
            profilePath : '/profile',
            items: [
                { title: 'Home', icon: 'mdi-view-dashboard', path: '/'},
                { title: 'Objectifs', icon: 'mdi-image' , path: '/idp'},
                { title: 'Sessions', icon: 'mdi-help-box' , path: '/sessions'},
                { title: 'Diary', icon: 'mdi-view-dashboard', path: '/diary'},
                { title: 'Progress', icon: 'mdi-view-dashboard', path: '/progress'},
                { title: 'External Support', icon: 'mdi-view-dashboard', path: '/externalsupport'},
                { title: 'External Support Feedback', icon: 'mdi-view-dashboard', path: '/externalsupportfeedback   '},
            ],
            right: null,
        }),
    };
</script>
