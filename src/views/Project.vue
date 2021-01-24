<template>
    <div>
        <v-row>
            <v-col cols="12" sm="3">
                Please select Begin date and en date for the project
            </v-col>
            <v-col
                    cols="12"
                    sm="9"
            >
                <v-date-picker
                        v-model="dates"
                        range
                ></v-date-picker>
                <v-text-field
                        v-model="dateRangeText"
                        label="Date range"
                        prepend-icon="mdi-calendar"
                        readonly
                ></v-text-field>
            </v-col>
        </v-row>
    </div>
</template>

<script>
    // @ is an alias to /src

    export default {
        name: 'Project',
        components: {}
    }
</script>
