<template>
  <v-container>
    <v-card>
      <v-card-title>
        <span class="headline">Objectif</span>
      </v-card-title>
      <v-card-text>
        <v-container>
          <v-row>
            <v-col
                cols="12"
            >
              <v-text-field
                  label="Description"
                  required
              ></v-text-field>
            </v-col>
          </v-row>
          <v-row>
            <v-col
                cols="12"
            >
              <v-slider
                  label="Self assessment"
                  step="10"
                  thumb-label="always"
                  ticks
              ></v-slider>
            </v-col>
          </v-row>
          <v-row>
            <v-col
                cols="12"
            >
              <v-card>
                <v-toolbar
                >
                  <v-toolbar-title>External Support</v-toolbar-title>
                  <v-spacer></v-spacer>

                  <v-btn>Add</v-btn>

                </v-toolbar>
                <v-list>
                  <v-list-item
                      v-for="item in items"
                      :key="item.title"
                  >

                    <v-list-item-content>
                      <v-list-item-title v-text="item.title"></v-list-item-title>
                    </v-list-item-content>

                    <v-list-item-avatar>
                      <v-img :src="item.avatar"></v-img>
                    </v-list-item-avatar>
                  </v-list-item>
                </v-list>
              </v-card>
            </v-col>
          </v-row>
          <v-row>
            <v-col
                cols="12"
            >
              <v-text-field
                  label="Benefits"
                  required
              ></v-text-field>
            </v-col>
          </v-row>
          <v-row>
            <v-col
                cols="12"
            >
              <v-card>
                <v-toolbar
                >
                  <v-toolbar-title>Obstacles</v-toolbar-title>
                  <v-spacer></v-spacer>

                  <v-btn>Add</v-btn>

                </v-toolbar>
                <v-card-text>
                  <v-simple-table>
                    <template v-slot:default>
                      <thead>
                      <tr>
                        <th class="text-left">
                          Name
                        </th>
                        <th class="text-left">
                          Description
                        </th>
                        <th class="text-left">
                          Overcoming Strategy
                        </th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr
                          v-for="item in desserts"
                          :key="item.name"
                      >
                        <td>{{ item.name }}</td>
                        <td>{{ item.description }}</td>
                        <td>{{ item.strategy }}</td>
                      </tr>
                      </tbody>
                    </template>
                  </v-simple-table>
                </v-card-text>
              </v-card>
            </v-col>
          </v-row>
        </v-container>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {icon: true, title: 'Jason Oner', avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg'},
        {title: 'Travis Howard', avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg'},
        {title: 'Ali Connors', avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg'},
        {title: 'Cindy Baker', avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg'},
      ],
      desserts: [
        {
          name: 'Obstacle1',
          description: 'Description1',
          strategy: 'Strategy1',
        },
        {
          name: 'Obstacle2',
          description: 'Description2',
          strategy: 'Strategy2',
        },
      ],
    }
  },
}
</script>
