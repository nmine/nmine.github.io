<template>
  <v-form>
    <v-container  fluid>
      <v-card  class="mx-auto pa-md-8 mx-lg-auto"
    max-width="500"
  elevation="2">
      <v-row >
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
          <v-btn
        class="mr-4"
        color="primary"
      >
        Create Account
      </v-btn>
        </v-col>

             </v-row>
      </v-card>
    </v-container>
  </v-form>
</template>

<script>
  export default {
    name: 'CreateAccount',

    data: () => ({
      show1: false,
        show2: true,
        show3: false,
        show4: false,
        password: 'Password',
        rules: {
          required: value => !!value || 'Required.',
          min: v => v.length >= 8 || 'Min 8 characters',
          emailMatch: () => (`The email and password you entered don't match`),
        },
    }),
  }
</script>
