<template>
    <v-stepper v-model="e1">
        <v-stepper-header>
            <v-stepper-step
                    :complete="e1 > 1"
                    step="1"
                    editable
            >
                Coach Number
            </v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step
                    :complete="e1 > 2"
                    step="2"
                    editable
            >
                Coach Catalogue
            </v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step step="3" editable>
                Coach Basket
            </v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step step="4" editable>Session Selection</v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step step="5" editable>Trainee</v-stepper-step>

        </v-stepper-header>

        <v-stepper-items>
            <v-stepper-content step="1">
                <v-form>
                    <v-slider
                            v-model="value"
                            :rules="rules"
                            label="Number of coach for the project"
                            step="10"
                            thumb-label="always"
                            ticks
                            class="pt-10"
                    ></v-slider>

                    <v-btn
                            color="primary"
                            @click="e1 = 2"
                    >
                        Continue
                    </v-btn>
                </v-form>
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
                <v-card>
                    <v-row>
                        <v-col md="3" class="pa-10">
                            <v-card-subtitle>Coach1</v-card-subtitle>
                            <v-img
                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                    height="200px"
                                    width="100px"
                            ></v-img>
                        </v-col>
                        <v-col md="3" offset-md="6">
                            <v-btn color="red" class="float-md-right">Delete</v-btn>
                        </v-col>
                    </v-row>
                </v-card>
                <v-card>
                    <v-row>
                        <v-col md="3" class="pa-10">
                            <v-card-subtitle>Coach1</v-card-subtitle>
                            <v-img
                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                    height="200px"
                                    width="100px"
                            ></v-img>
                        </v-col>
                        <v-col md="3" offset-md="6">
                            <v-btn color="red" class="float-md-right">Delete</v-btn>
                        </v-col>
                    </v-row>
                </v-card>
                <v-card>
                    <v-row>
                        <v-col md="3" class="pa-10">
                            <v-card-subtitle>Coach1</v-card-subtitle>
                            <v-img
                                    src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                    height="200px"
                                    width="100px"
                            ></v-img>
                        </v-col>
                        <v-col md="3" offset-md="6">
                            <v-btn color="red" class="float-md-right">Delete</v-btn>
                        </v-col>
                    </v-row>
                </v-card>

                <v-btn
                        color="primary"
                        @click="e1 = 1"
                >
                    Continue
                </v-btn>
            </v-stepper-content>

            <v-stepper-content step="4">
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
                <v-row>
                    <v-slider
                            v-model="value"
                            :rules="rules"
                            label="NNumber of credit per trainee"
                            step="10"
                            thumb-label="always"
                            ticks
                            class="pt-10"
                    ></v-slider>
                </v-row>

                <v-btn
                        color="primary"
                        @click="e1 = 1"
                >
                    Continue
                </v-btn>
            </v-stepper-content>

            <v-stepper-content step="5">
                <v-row justify="center">
                    <v-expansion-panels accordion>
                        <v-expansion-panel>
                            <v-expansion-panel-header>Trainee</v-expansion-panel-header>
                            <v-expansion-panel-content>
                                <v-data-table
                                        :headers="headers"
                                        :items="desserts"
                                        sort-by="calories"
                                        :single-expand="singleExpand"
                                        class="elevation-1"
                                        show-expand
                                >
                                    <template v-slot:expanded-item="{ headers, item }">
                                        <td :colspan="headers.length">
                                            <v-data-table
                                                    :headers="headersSponsors"
                                                    :items="item.sponsors"
                                                    class="elevation-3"
                                                    :hide-default-footer="true"
                                            >
                                                <template v-slot:item.actions="{ item }">
                                                    <v-icon
                                                            small
                                                            class="mr-2"
                                                            @click="editItem(item)"
                                                    >
                                                        mdi-pencil
                                                    </v-icon>
                                                    <v-icon
                                                            small
                                                            @click="deleteItem(item)"
                                                    >
                                                        mdi-delete
                                                    </v-icon>
                                                </template>
                                            </v-data-table>
                                        </td>
                                    </template>
                                    <template v-slot:top>
                                        <v-toolbar
                                                flat
                                        >
                                            <v-toolbar-title>Trainees</v-toolbar-title>
                                            <v-divider
                                                    class="mx-4"
                                                    inset
                                                    vertical
                                            ></v-divider>
                                            <v-spacer></v-spacer>
                                            <v-dialog
                                                    v-model="dialog"
                                                    max-width="500px"
                                            >
                                                <template v-slot:activator="{ on, attrs }">
                                                    <v-btn
                                                            color="primary"
                                                            dark
                                                            class="mb-2"
                                                            v-bind="attrs"
                                                            v-on="on"
                                                    >
                                                        New Item
                                                    </v-btn>
                                                </template>
                                                <v-card>
                                                    <v-card-title>
                                                        <span class="headline">{{ formTitle }}</span>
                                                    </v-card-title>

                                                    <v-card-text>
                                                        <v-container>
                                                            <v-row>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.name"
                                                                            label="First Name Last Name"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.calories"
                                                                            label="Calories"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.fat"
                                                                            label="Fat (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.carbs"
                                                                            label="Carbs (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.protein"
                                                                            label="Protein (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-select
                                                                            v-model="value"
                                                                            :items="items"
                                                                            attach
                                                                            chips
                                                                            label="Specialities"
                                                                            multiple
                                                                    ></v-select>
                                                                </v-col>
                                                            </v-row>
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
                                            <v-dialog v-model="dialogDelete" max-width="500px">
                                                <v-card>
                                                    <v-card-title class="headline">Are you sure you want to delete this
                                                        item?
                                                    </v-card-title>
                                                    <v-card-actions>
                                                        <v-spacer></v-spacer>
                                                        <v-btn color="blue darken-1" text @click="closeDelete">Cancel
                                                        </v-btn>
                                                        <v-btn color="blue darken-1" text @click="deleteItemConfirm">
                                                            OK
                                                        </v-btn>
                                                        <v-spacer></v-spacer>
                                                    </v-card-actions>
                                                </v-card>
                                            </v-dialog>
                                        </v-toolbar>
                                    </template>
                                    <template v-slot:item.actions="{ item }">
                                        <v-icon
                                                small
                                                class="mr-2"
                                                @click="editItem(item)"
                                        >
                                            mdi-pencil
                                        </v-icon>
                                        <v-icon
                                                small
                                                @click="deleteItem(item)"
                                        >
                                            mdi-delete
                                        </v-icon>
                                    </template>
                                    <template v-slot:no-data>
                                        <v-btn
                                                color="primary"
                                                @click="initialize"
                                        >
                                            Reset
                                        </v-btn>
                                    </template>
                                </v-data-table>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                    </v-expansion-panels>
                </v-row>


                <v-row justify="center">
                    <v-expansion-panels accordion>
                        <v-expansion-panel>
                            <v-expansion-panel-header>Sponsor</v-expansion-panel-header>
                            <v-expansion-panel-content>
                                <v-data-table
                                        :headers="headers"
                                        :items="desserts"
                                        sort-by="calories"
                                        class="elevation-1"
                                >
                                    <template v-slot:top>
                                        <v-toolbar
                                                flat
                                        >
                                            <v-toolbar-title>Sponsors</v-toolbar-title>
                                            <v-divider
                                                    class="mx-4"
                                                    inset
                                                    vertical
                                            ></v-divider>
                                            <v-spacer></v-spacer>
                                            <v-dialog
                                                    v-model="dialog"
                                                    max-width="500px"
                                            >
                                                <template v-slot:activator="{ on, attrs }">
                                                    <v-btn
                                                            color="primary"
                                                            dark
                                                            class="mb-2"
                                                            v-bind="attrs"
                                                            v-on="on"
                                                    >
                                                        New Item
                                                    </v-btn>
                                                </template>
                                                <v-card>
                                                    <v-card-title>
                                                        <span class="headline">{{ formTitle }}</span>
                                                    </v-card-title>

                                                    <v-card-text>
                                                        <v-container>
                                                            <v-row>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.name"
                                                                            label="First Name Last Name"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.calories"
                                                                            label="Calories"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.fat"
                                                                            label="Fat (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.carbs"
                                                                            label="Carbs (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-text-field
                                                                            v-model="editedItem.protein"
                                                                            label="Protein (g)"
                                                                    ></v-text-field>
                                                                </v-col>
                                                                <v-col
                                                                        cols="12"
                                                                        sm="6"
                                                                        md="4"
                                                                >
                                                                    <v-select
                                                                            v-model="value"
                                                                            :items="items"
                                                                            attach
                                                                            chips
                                                                            label="Specialities"
                                                                            multiple
                                                                    ></v-select>
                                                                </v-col>
                                                            </v-row>
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
                                            <v-dialog v-model="dialogDelete" max-width="500px">
                                                <v-card>
                                                    <v-card-title class="headline">Are you sure you want to delete this
                                                        item?
                                                    </v-card-title>
                                                    <v-card-actions>
                                                        <v-spacer></v-spacer>
                                                        <v-btn color="blue darken-1" text @click="closeDelete">Cancel
                                                        </v-btn>
                                                        <v-btn color="blue darken-1" text @click="deleteItemConfirm">
                                                            OK
                                                        </v-btn>
                                                        <v-spacer></v-spacer>
                                                    </v-card-actions>
                                                </v-card>
                                            </v-dialog>
                                        </v-toolbar>
                                    </template>
                                    <template v-slot:item.actions="{ item }">
                                        <v-icon
                                                small
                                                class="mr-2"
                                                @click="editItem(item)"
                                        >
                                            mdi-pencil
                                        </v-icon>
                                        <v-icon
                                                small
                                                @click="deleteItem(item)"
                                        >
                                            mdi-delete
                                        </v-icon>
                                    </template>
                                    <template v-slot:no-data>
                                        <v-btn
                                                color="primary"
                                                @click="initialize"
                                        >
                                            Reset
                                        </v-btn>
                                    </template>
                                </v-data-table>
                            </v-expansion-panel-content>
                        </v-expansion-panel>
                    </v-expansion-panels>
                </v-row>
                <v-btn class="mt-5"
                       color="primary"
                       @click="e1 = 1"
                >
                    Continue
                </v-btn>
            </v-stepper-content>

        </v-stepper-items>
    </v-stepper>
</template>

<script>
    export default {
        name: 'CreateProjectStepper',

        data: () => ({
            singleExpand: false,
            expanded: [],
            e1: 1,
            items: ["foo", "bar", "fizz", "buzz"],
            dates: ['2019-09-10', '2019-09-20'],
            dialog: false,
            dialogDelete: false,
            headers: [
                {text: 'FirstName', align: 'start', value: 'name'},
                {text: 'LastName', value: 'calories'},
                {text: 'Language', value: 'fat'},
                {text: 'Email', value: 'carbs'},
                {text: 'Credit', value: 'protein'},
                {text: 'Dates begin/end', value: 'dates'},
                {text: 'Actions', value: 'actions', sortable: false},
                {text: '', value: 'data-table-expand'}
            ],
            headersSponsors: [
                {text: 'FirstName', align: 'start', value: 'name'},
                {text: 'LastName', value: 'calories'},
                {text: 'Language', value: 'fat'},
                {text: 'Email', value: 'email'},
                {text: 'Roles', value: 'role'},
                {text: 'Actions', value: 'actions', sortable: false}
            ],
            headersIDP: [
                {text: 'Headers', align: 'start', value: 'name'},
                {text: 'Col1', value: 'calories'},
                {text: 'Col2', value: 'fat'},
                {text: 'Col3', value: 'carbs'},
                {text: 'Actions', value: 'actions', sortable: false},
            ],
            desserts: [],
            editedIndex: -1,
            editedItem: {
                name: '',
                calories: 0,
                fat: 0,
                carbs: 0,
                protein: 0,
            },
            defaultItem: {
                name: '',
                calories: 0,
                fat: 0,
                carbs: 0,
                protein: 0,
            },
        }),

        computed: {
            dateRangeText() {
                return this.dates.join(' ~ ')
            },
            formTitle() {
                return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
            }
        },
        watch: {
            dialog(val) {
                val || this.close()
            },
            dialogDelete(val) {
                val || this.closeDelete()
            },
        },

        created() {
            this.initialize()
        },

        methods: {
            initialize() {
                this.desserts = [
                    {
                        name: 'Nicolas',
                        calories: 'Lulu',
                        fat: 'FR',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'sponsor',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Nicia',
                        calories: 'Mine',
                        fat: 'NL',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'sponsor',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Cosma',
                        calories: 'Mine',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Janey',
                        calories: 'Mine',
                        fat: 'FR',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Nicolette',
                        calories: 'Dupond',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Gary',
                        calories: 'Lele',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Edward mm',
                        calories: 'Lele',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Tyr',
                        calories: 'Mine',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Christina',
                        calories: 'Christina',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                    {
                        name: 'Donalda',
                        calories: 'Mine',
                        fat: 'EN',
                        carbs: 'toto@gmail.com',
                        protein: 5,
                        sponsors: [
                            {
                                name: 'Nicolas',
                                calories: 'sd',
                                fat: 'FR',
                                email: '@gmail.com',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'qsds',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            },
                            {
                                name: 'Nicolas',
                                calories: 'dqs',
                                email: '@gmail.com',
                                fat: 'FR',
                                role: 'N+1'
                            }],
                        category: 'trainee',
                        dates: '05/01/21 - 05/03/21'
                    },
                ]
            },

            editItem(item) {
                this.editedIndex = this.desserts.indexOf(item)
                this.editedItem = Object.assign({}, item)
                this.dialog = true
            }
            ,

            deleteItem(item) {
                this.editedIndex = this.desserts.indexOf(item)
                this.editedItem = Object.assign({}, item)
                this.dialogDelete = true
            }
            ,

            deleteItemConfirm() {
                this.desserts.splice(this.editedIndex, 1)
                this.closeDelete()
            }
            ,

            close() {
                this.dialog = false
                this.$nextTick(() => {
                    this.editedItem = Object.assign({}, this.defaultItem)
                    this.editedIndex = -1
                })
            }
            ,

            closeDelete() {
                this.dialogDelete = false
                this.$nextTick(() => {
                    this.editedItem = Object.assign({}, this.defaultItem)
                    this.editedIndex = -1
                })
            }
            ,

            save() {
                if (this.editedIndex > -1) {
                    Object.assign(this.desserts[this.editedIndex], this.editedItem)
                } else {
                    this.desserts.push(this.editedItem)
                }
                this.close()
            }
            ,
        },
    }
</script>
