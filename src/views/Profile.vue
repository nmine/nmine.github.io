<template>
    <v-container>
        <v-row>

            <v-col
                    cols="12"
                    sm="12"
            >

                <v-text-field
                        :counter="50"
                        label="First name"
                        required
                ></v-text-field>
                <v-text-field
                        :counter="50"
                        label="Last name"
                        required
                ></v-text-field>
                <v-text-field
                        v-model="email"
                        label="E-mail"
                ></v-text-field>
                <v-text-field
                        v-model="password"
                        :append-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                        :type="show1 ? 'text' : 'password'"
                        name="input-10-1"
                        label="Password"
                        hint="At least 8 characters"
                        counter
                        @click:append="show1 = !show1"
                ></v-text-field>
                <br>
                Coaching styles
                <v-divider></v-divider>

            </v-col>
        </v-row>

    </v-container>
</template>

<script>
    // @ is an alias to /src

    export default {
        name: 'Profile',
        components: {}
    }
</script>
