<template>
  <v-form>
    <v-container fluid>
      <v-card class="mx-auto pa-md-8 mx-lg-auto" max-width="500" elevation="2">
        <v-card-text class="pt-0">
          <v-slider
            v-model="value"
            :rules="rules"
            label="Number of coach"
            step="10"
            thumb-label="always"
            ticks
          ></v-slider>
          <v-select
            v-model="e7"
            :items="states"
            label="Select"
            multiple
            chips
            hint="Coch selected for the project"
            persistent-hint
          ></v-select>
        </v-card-text>
      </v-card>
    </v-container>
  </v-form>
</template>

<script>
export default {
  name: "CoachSelection",

  data: () => ({
    show1: false,
    show2: true,
    show3: false,
    show4: false,
    password: "Password",
    rules: {
      required: (value) => !!value || "Required.",
      min: (v) => v.length >= 8 || "Min 8 characters",
      emailMatch: () => `The email and password you entered don't match`,
    },
    states: [
      "Alabama",
      "Alaska",
      "American Samoa",
      "Arizona",
      "Arkansas",
      "California",
      "Colorado",
      "Connecticut",
      "Delaware",
      "District of Columbia",
      "Federated States of Micronesia",
      "Florida",
      "Georgia",
      "Guam",
      "Hawaii",
      "Idaho",
      "Illinois",
      "Indiana",
      "Iowa",
      "Kansas",
      "Kentucky",
      "Louisiana",
      "Maine",
      "Marshall Islands",
      "Maryland",
      "Massachusetts",
      "Michigan",
      "Minnesota",
      "Mississippi",
      "Missouri",
      "Montana",
      "Nebraska",
      "Nevada",
      "New Hampshire",
      "New Jersey",
      "New Mexico",
      "New York",
      "North Carolina",
      "North Dakota",
      "Northern Mariana Islands",
      "Ohio",
      "Oklahoma",
      "Oregon",
      "Palau",
      "Pennsylvania",
      "Puerto Rico",
      "Rhode Island",
      "South Carolina",
      "South Dakota",
      "Tennessee",
      "Texas",
      "Utah",
      "Vermont",
      "Virgin Island",
      "Virginia",
      "Washington",
      "West Virginia",
      "Wisconsin",
      "Wyoming",
    ],
  }),
};
</script>
