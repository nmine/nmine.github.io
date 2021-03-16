<template>
  <v-container>
    <v-row>
      <v-col cols="12">
        <v-card>
          <v-toolbar>
            <v-toolbar-title>Improve .. Objectif1</v-toolbar-title>
            <v-spacer></v-spacer>

            <v-btn>Add External support</v-btn>

          </v-toolbar>
          <v-list>
            <v-list-item
                v-for="item in items1"
                :key="item.title"
            >

              <v-list-item-content>
                <v-col cols="5">
                  {{ item.title }} {{ item.email }}
                </v-col>
                <v-col cols="7">
                  <v-select
                      v-model="value"
                      :items="items"
                      attach
                      chips
                      label="Objectifs"
                      multiple
                  ></v-select>
                </v-col>
              </v-list-item-content>

              <v-list-item-avatar>
                <v-img :src="item.avatar"></v-img>
              </v-list-item-avatar>
            </v-list-item>
          </v-list>
        </v-card>
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
export default {
  name: 'ExternalSupport',
  components: {},
  data: () => ({
    items: ["Objectif1", "Objectif2", "Objectif3", "Objectif4"],
    items1: [
      {icon: true, title: 'Jason Oner', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg'},
      {title: 'Travis Howard', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg'},
      {title: 'Cindy Baker', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg'},
      {icon: true, email: 'aaa@gmail.com', title: 'Jason Oner', avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg'},
      {title: 'Travis Howard', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg'},
      {icon: true, title: 'Jason Oner', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg'},
      {title: 'Travis Howard', email: 'aaa@gmail.com', avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg'},
    ],
  })
}
</script>
