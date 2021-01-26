<template>
    <v-container>
        <v-dialog
                v-model="dialogCreateTrainee"
        >
            <template v-slot:activator="{ on, attrs }">
                <v-btn
                        color="primary"
                        dark
                        class="mb-2"
                        v-bind="attrs"
                        v-on="on"
                >
                    New Trainee
                </v-btn>
            </template>
            <v-card>
                <v-card-title>
                    <span class="headline">{{ formTitle }}</span>
                </v-card-title>

                <v-card-text>
                    <v-container>
                        <v-stepper v-model="e1">
                            <v-stepper-header>
                                <v-stepper-step
                                        step="1"
                                        editable
                                >
                                    Objectifs selection
                                </v-stepper-step>

                                <v-divider></v-divider>

                                <v-stepper-step step="2" editable>
                                    Coach Basket
                                </v-stepper-step>

                                <v-divider></v-divider>

                                <v-stepper-step step="3" editable>
                                    Coach Basket
                                </v-stepper-step>

                            </v-stepper-header>

                            <v-stepper-items>

                                <v-stepper-content step="1">
                                    <v-container>
                                        <v-row>
                                            <v-select
                                                    v-model="value"
                                                    :items="items"
                                                    attach
                                                    label="Objectifs"
                                            ></v-select>
                                        </v-row>
                                        <v-row>
                                            <v-switch
                                                    v-model="switch1"
                                                    label="Notify Observers"
                                            ></v-switch>
                                        </v-row>
                                    </v-container>
                                    <v-btn
                                            color="primary"
                                            @click="e1 = 1"
                                    >
                                        Continue
                                    </v-btn>
                                </v-stepper-content>

                                <v-stepper-content step="2">

                                    <v-container fluid class="grey lighten-5">
                                        <v-row no-gutters>
                                            <v-col :key="2" cols="12" lg="12">
                                                <v-row>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto pa-5">
                                                            <v-select
                                                                    v-model="value"
                                                                    :items="items"
                                                                    attach
                                                                    chips
                                                                    label="Specialities"
                                                                    multiple
                                                            ></v-select>
                                                        </v-card
                                                        >
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto pa-5">
                                                            <v-select
                                                                    v-model="value"
                                                                    :items="items"
                                                                    attach
                                                                    chips
                                                                    label="Certification"
                                                                    multiple
                                                            ></v-select>
                                                        </v-card
                                                        >
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto pa-3">
                                                            <v-checkbox
                                                                    v-model="ex4"
                                                                    label="French"
                                                                    value="red"
                                                                    hide-details
                                                            ></v-checkbox>
                                                            <v-checkbox
                                                                    v-model="ex4"
                                                                    label="English"
                                                                    value="red darken-3"
                                                                    hide-details
                                                            ></v-checkbox>
                                                        </v-card>
                                                    </v-col>
                                                </v-row>
                                                <v-row>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>
                                                            <v-card-text>
                                                                <v-chip-group
                                                                        v-model="selection"
                                                                        active-class="deep-purple accent-4 white--text"
                                                                        column
                                                                >
                                                                    <v-chip>Speciality1</v-chip>

                                                                    <v-chip>Speciality2</v-chip>

                                                                    <v-chip>Speciality3</v-chip>

                                                                    <v-chip>Speciality4</v-chip>
                                                                </v-chip-group>
                                                            </v-card-text>
                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>

                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>

                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                </v-row>
                                                <v-row>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>

                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>

                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                    <v-col cols="4">
                                                        <v-card class="mx-auto">
                                                            <v-img
                                                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                                                    height="200px"
                                                            ></v-img>

                                                            <v-card-title> Top western road trips</v-card-title>

                                                            <v-card-subtitle> 1,000 miles of wonder</v-card-subtitle>

                                                            <v-card-actions>
                                                                <v-btn color="orange lighten-2" text> Explore</v-btn>

                                                                <v-spacer></v-spacer>

                                                                <v-btn icon @click="show = !show">
                                                                    <v-icon>{{
                                                                        show ? "mdi-chevron-up" : "mdi-chevron-down"
                                                                        }}
                                                                    </v-icon>
                                                                </v-btn>
                                                            </v-card-actions>
                                                        </v-card>
                                                    </v-col>
                                                </v-row>
                                                <v-row>
                                                    <v-col>
                                                        <div class="text-center">
                                                            <v-pagination v-model="page" :length="6"></v-pagination>
                                                        </div>
                                                    </v-col>
                                                </v-row>
                                            </v-col>
                                        </v-row>
                                    </v-container>

                                    <v-btn
                                            color="primary"
                                            @click="e1 = 3"
                                    >
                                        Continue
                                    </v-btn>
                                </v-stepper-content>

                                <v-stepper-content step="3">

                                    <v-container fluid class="grey lighten-5">
                                        <vue-calendly url="https://calendly.com/nicolas-mine11/30min"
                                                      :height="600"></vue-calendly>
                                    </v-container>

                                    <v-btn
                                            color="primary"
                                            @click="e1 = 3"
                                    >
                                        Continue
                                    </v-btn>
                                </v-stepper-content>

                            </v-stepper-items>
                        </v-stepper>
                    </v-container>
                </v-card-text>

                <v-card-actions>
                    <v-spacer></v-spacer>
                    <v-btn
                            color="blue darken-1"
                            text
                            @click="close"
                    >
                        Cancel
                    </v-btn>
                    <v-btn
                            color="blue darken-1"
                            text
                            @click="save"
                    >
                        Save
                    </v-btn>
                </v-card-actions>
            </v-card>
        </v-dialog>
        <v-row>
            <v-col cols="12">
                <v-card>
                    <v-card-title>
                        <span class="headline">Session1</span>
                    </v-card-title>

                    <v-card-text>14h00 avec coach1 <v-btn class="float-md-right">
                        Rejoindre session
                    </v-btn></v-card-text>
                </v-card>
            </v-col>
            <v-col cols="12">
                <v-card>
                    <v-card-title>
                        <span class="headline">Session2</span>
                    </v-card-title>

                    <v-card-text>14h00 avec coach1 <v-btn class="float-md-right">
                        Rejoindre session
                    </v-btn></v-card-text>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
    // @ is an alias to /src

    export default {
        name: 'Sessions',
        data: () => ({
            dialogCreateTrainee: false,
            items: ["Objectifs1", "Objectifs2", "Objectifs3", "Objectifs4"],
            switch1: false,
            e1: 1
        })
    }
</script>
