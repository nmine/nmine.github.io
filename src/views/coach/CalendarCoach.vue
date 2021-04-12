<template>
    <v-container>
        <v-row>

            <v-col
                    cols="12"
                    sm="12"
            >

                <v-text-field
                        :counter="50"
                        label="Photo"
                        required
                ></v-text-field>
                <v-text-field
                        :counter="50"
                        label="First name"
                        required
                ></v-text-field>
                <v-text-field
                        v-model="email"
                        label="Last name"
                ></v-text-field>
              <v-text-field
                  v-model="email"
                  label="Langue"
              ></v-text-field>
              <v-text-field
                  v-model="email"
                  label="Short description"
              ></v-text-field>
              <v-text-field
                  v-model="email"
                  label="Details description"
              ></v-text-field>
              <v-text-field
                  v-model="email"
                  label="Fun facts"
              ></v-text-field>
              <v-text-field
                  v-model="email"
                  label="Video de presentation"
              ></v-text-field>
            </v-col>
        </v-row>

    </v-container>
</template>

<script>
    // @ is an alias to /src

    export default {
        name: 'Profile',
        components: {},
        data: () => ({
            items: ["Style1", "Style2", "Style3", "Style4"]
        })
    }
</script>
