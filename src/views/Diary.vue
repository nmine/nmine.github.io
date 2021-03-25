<template>
  <v-container>
    <v-row>
      <v-col
          cols="12"
      >
        <v-card>
          <v-toolbar
          >
            <v-toolbar-title>Diary</v-toolbar-title>
            <v-spacer></v-spacer>

            <v-btn>Add</v-btn>

          </v-toolbar>
          <v-card-text>
            <v-simple-table>
              <template v-slot:default>
                <thead>
                <tr>
                  <th class="text-left">
                    Date
                  </th>
                  <th class="text-left">
                    Content
                  </th>
                  <th class="text-left">
                    Session
                  </th>
                  <th class="text-left">
                    Event
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
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Diary',
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
