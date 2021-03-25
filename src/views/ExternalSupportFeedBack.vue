<template>
  <v-container>
    <v-row>
      <v-col
          cols="12"
      >
        <v-select
            v-model="value"
            :items="items"
            attach
            chips
            label="Objectifs"
            multiple
        ></v-select>
      </v-col>
      <v-col
          cols="12"
      >
        <v-text-field
            label="Ce qu'il fait bien"
        ></v-text-field>
      </v-col>
      <v-col
          cols="12"
      >
        <v-text-field
            label="Ce qu'il doit développer"
        ></v-text-field>
      </v-col>
      <v-col
          cols="12"
      >
        <v-text-field
            label="Progres observé"
        ></v-text-field>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'ExternalSupportFeedback',
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
