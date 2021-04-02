<template>
  <v-container>
    <v-row>
      <v-col
          cols="12"
      >
        <v-card>
          <v-toolbar
          >
            <v-toolbar-title>Objectif1</v-toolbar-title>
            <v-spacer></v-spacer>
          </v-toolbar>
          <v-card-text>
            <v-col
                cols="12"
            >
              <v-slider
                  label="Self assessment"
                  :tick-labels="seasons"
                  min="0"
                  max="10"
                  ticks="always"
                  tick-size="4"
                  thumb-label="always"
              >
              </v-slider>
            </v-col>
            Progress
            Quand on change score -> dialog avec form date, Examples qui illustre votre progression, Qu’est ce qui vous permettrait d’aller encore plus loin
            <v-simple-table>
              <template v-slot:default>
                <thead>
                <tr>
                  <th class="text-left">
                    Date
                  </th>
                  <th class="text-left">
                    Examples qui illustre votre progression
                  </th>
                  <th class="text-left">
                    Qu’est ce qui vous permettrait d’aller encore plus loin
                  </th>
                </tr>
                </thead>
                <tbody>
                <tr
                    v-for="item in desserts"
                    :key="item.name"
                >
                  <td>{{ item.name }}</td>
                  <td>{{ item.name }}</td>
                  <td>{{ item.description }}</td>
                </tr>
                </tbody>
              </template>
            </v-simple-table>
          </v-card-text>
        </v-card>
        <v-card>
          <v-toolbar
          >
            <v-toolbar-title>Objectif2</v-toolbar-title>
            <v-spacer></v-spacer>
          </v-toolbar>
          <v-card-text>
            <v-col
                cols="12"
            >
              <v-slider
                  label="Self assessment"
                  :tick-labels="seasons"
                  min="0"
                  max="10"
                  ticks="always"
                  tick-size="4"
                  thumb-label="always"
              >
              </v-slider>
            </v-col>
            Progress
            Quand on change score -> dialog avec form date, Examples qui illustre votre progression, Qu’est ce qui vous permettrait d’aller encore plus loin
            <v-simple-table>
              <template v-slot:default>
                <thead>
                <tr>
                  <th class="text-left">
                    Date
                  </th>
                  <th class="text-left">
                    Examples qui illustre votre progression
                  </th>
                  <th class="text-left">
                    Qu’est ce qui vous permettrait d’aller encore plus loin
                  </th>
                </tr>
                </thead>
                <tbody>
                <tr
                    v-for="item in desserts"
                    :key="item.name"
                >
                  <td>{{ item.name }}</td>
                  <td>{{ item.name }}</td>
                  <td>{{ item.description }}</td>
                </tr>
                </tbody>
              </template>
            </v-simple-table>
          </v-card-text>
        </v-card>
        <v-card>
          <v-toolbar
          >
            <v-toolbar-title>Objectif3</v-toolbar-title>
            <v-spacer></v-spacer>
          </v-toolbar>
          <v-card-text>
            <v-col
                cols="12"
            >
              <v-slider
                  label="Self assessment"
                  :tick-labels="seasons"
                  min="0"
                  max="10"
                  ticks="always"
                  tick-size="4"
                  thumb-label="always"
              >
              </v-slider>
            </v-col>
            Progress
            Quand on change score -> dialog avec form date, Examples qui illustre votre progression, Qu’est ce qui vous permettrait d’aller encore plus loin
            <v-simple-table>
              <template v-slot:default>
                <thead>
                <tr>
                  <th class="text-left">
                    Date
                  </th>
                  <th class="text-left">
                    Examples qui illustre votre progression
                  </th>
                  <th class="text-left">
                    Qu’est ce qui vous permettrait d’aller encore plus loin
                  </th>
                </tr>
                </thead>
                <tbody>
                <tr
                    v-for="item in desserts"
                    :key="item.name"
                >
                  <td>{{ item.name }}</td>
                  <td>{{ item.name }}</td>
                  <td>{{ item.description }}</td>
                </tr>
                </tbody>
              </template>
            </v-simple-table>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Progress',
  components: {},
  data: () => ({
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
  })
}
</script>
