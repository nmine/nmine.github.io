<template>
  <v-container>
    <v-col cols="12">
      <v-expansion-panels>
        <v-expansion-panel>
          <v-expansion-panel-header>
            Objectif1
          </v-expansion-panel-header>
          <v-expansion-panel-content>
            <v-col cols="12">
              <v-card>
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
                            :tick-labels="seasons"
                            min="0"
                            max="10"
                            ticks="always"
                            tick-size="4"
                            thumb-label="always"
                        >
                        </v-slider>
                      </v-col>
                    </v-row>
                    <v-row>
                      <v-col cols="12">
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
                      <v-col
                          cols="12"
                      >
                        <v-card>
                          <v-toolbar
                          >
                            <v-toolbar-title>Resources</v-toolbar-title>
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
                                    Link
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
            </v-col>
          </v-expansion-panel-content>
        </v-expansion-panel>
        <v-expansion-panel>
          <v-expansion-panel-header>
            Objectif2
          </v-expansion-panel-header>
          <v-expansion-panel-content>
            <v-col cols="12">
              <v-card>
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
                            :tick-labels="seasons"
                            min="0"
                            max="10"
                            ticks="always"
                            tick-size="4"
                            thumb-label="always"
                        >
                        </v-slider>
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
            </v-col>
          </v-expansion-panel-content>
        </v-expansion-panel>
        <v-expansion-panel>
          <v-expansion-panel-header>
            Objectif3
          </v-expansion-panel-header>
          <v-expansion-panel-content>
            <v-col cols="12">
              <v-card>
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
                            :tick-labels="seasons"
                            min="0"
                            max="10"
                            ticks="always"
                            tick-size="4"
                            thumb-label="always"
                        >
                        </v-slider>
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
                      <v-col
                          cols="12"
                      >
                        <v-card>
                          <v-toolbar
                          >
                            <v-toolbar-title>Resources</v-toolbar-title>
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
                                    Link
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
            </v-col>
          </v-expansion-panel-content>
        </v-expansion-panel>
      </v-expansion-panels>
    </v-col>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      seasons: ["", "", "", "", "Current Situation", "", "", "", "Target", ""],
      icons: ["mdi-snowflake", "mdi-leaf", "mdi-fire", "mdi-water"],
      value: 0,
      fruits: 0,
      ticksLabels: [
        'Current situation',
        'Target',
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
