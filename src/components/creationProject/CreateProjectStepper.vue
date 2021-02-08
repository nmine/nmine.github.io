<template>
  <v-stepper v-model="e1">
    <v-stepper-header>

      <v-stepper-step step="1" editable>Project setup</v-stepper-step>

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

      <v-stepper-step step="4" editable>Trainee</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="5" editable>Sponsors</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="6" editable>Validation Participant</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="7" editable>Specificities</v-stepper-step>

    </v-stepper-header>

    <v-stepper-items>
      <v-stepper-content step="1">
        <v-container>
          <v-row class="pa-5">
            <v-col
                cols="12"
                sm="6"
                md="6"
            >
              <v-menu
                  v-model="menu2"
                  :close-on-content-click="false"
                  :nudge-right="40"
                  transition="scale-transition"
                  offset-y
                  min-width="auto"
              >
                <template v-slot:activator="{ on, attrs }">
                  <v-text-field
                      v-model="startDate"
                      label="Start date"
                      prepend-icon="mdi-calendar"
                      readonly
                      v-bind="attrs"
                      v-on="on"
                  ></v-text-field>
                </template>
                <v-date-picker
                    v-model="date"
                    @input="menu2 = false"
                ></v-date-picker>
              </v-menu>
            </v-col>
            <v-col
                cols="12"
                sm="6"
                md="6"
            >
              <v-menu
                  v-model="menu2"
                  :close-on-content-click="false"
                  :nudge-right="40"
                  transition="scale-transition"
                  offset-y
                  min-width="auto"
              >
                <template v-slot:activator="{ on, attrs }">
                  <v-text-field
                      v-model="startDate"
                      label="End date"
                      prepend-icon="mdi-calendar"
                      readonly
                      v-bind="attrs"
                      v-on="on"
                  ></v-text-field>
                </template>
                <v-date-picker
                    v-model="date"
                    @input="menu2 = false"
                ></v-date-picker>
              </v-menu>
            </v-col>
          </v-row>
          <v-row class="pa-5">
            <v-col
                cols="12"
                sm="6"
                md="6"
            >
              <v-btn>Add Milestone</v-btn>
            </v-col>
            <v-col
                cols="12"
                sm="6"
                md="6"
            >
              <v-date-picker
                  v-model="date2"
                  :event-color="date => date[9] % 2 ? 'red' : 'yellow'"
                  :events="functionEvents"
              ></v-date-picker>
            </v-col>
          </v-row>
          <v-row class="pa-5">
            <v-data-table
                :items="sponsorRoles"
                :headers="headerSponsorRoles"
                :items-per-page="5"
                item-key="name"
                class="elevation-1"
                :hide-default-footer="true">
              <template v-slot:top>
                <v-toolbar
                    flat
                >
                  <v-toolbar-title>Sponsore Roles</v-toolbar-title>
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
                          class="mb-2"
                          v-bind="attrs"
                          v-on="on"
                      >
                        Create Role
                      </v-btn>
                    </template>
                  </v-dialog>
                </v-toolbar>
              </template>
              <template v-slot:item.chosen="{ item }">
                <v-simple-checkbox
                    v-model="item.chosen"
                ></v-simple-checkbox>
              </template>

              <template v-slot:item.definition="props">
                <v-edit-dialog
                    :return-value.sync="props.item.definition"
                    large
                    persistent
                    @save="save"
                    @cancel="cancel"
                    @open="open"
                    @close="close"
                >
                  <div>{{ props.item.definition }}</div>
                  <template v-slot:input>
                    <div class="mt-4 title">
                      Update Iron
                    </div>
                    <v-text-field
                        v-model="props.item.definition"
                        :rules="[max25chars]"
                        label="Edit"
                        single-line
                        counter
                        autofocus
                    ></v-text-field>
                  </template>
                </v-edit-dialog>
              </template>
            </v-data-table>
          </v-row>
          <v-row class="pa-5">
            <v-slider
                v-model="value"
                :rules="rules"
                label="Number of credit per trainee"
                step="10"
                thumb-label="always"
                ticks
                class="pt-10"
            ></v-slider>
          </v-row>
          <v-btn class="ma-5"
                 color="primary"
                 @click="e1 = 1"
          >
            Continue
          </v-btn>
        </v-container>
      </v-stepper-content>

      <v-stepper-content step="2">
        <v-container fluid class="grey lighten-5">
          <v-row no-gutters>
            <v-col :key="2" cols="12" lg="12">
              <v-row>
                <div class="text-center">
                  <v-menu offset-y>
                    <template v-slot:activator="{ on, attrs }">
                      <v-btn
                          color="primary"
                          dark
                          v-bind="attrs"
                          v-on="on"
                      >
                        Dropdown
                      </v-btn>
                    </template>
                    <v-list>
                      <v-list-item
                          v-for="(item, index) in items"
                          :key="index"
                      >
                        <v-list-item-title>{{ item.title }}</v-list-item-title>
                      </v-list-item>
                    </v-list>
                  </v-menu>
                </div>
                <v-badge
                    :content="messages"
                    :value="messages"
                    color="green"
                    overlap
                >
                  <v-icon large>
                    mdi-account
                  </v-icon>
                </v-badge>
              </v-row>
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
          <v-col cols="12" sm="12">
            <v-data-table
                :headers="headers"
                :items="participants"
                sort-by="lastName"
                :single-expand="singleExpand"
                class="elevation-1"
                item-key="name"
            >
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
                      v-model="dialogCreateTrainee"
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
                        New Trainee
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
                                  v-model="newTrainee.name"
                                  label="First Name"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newTrainee.lastName"
                                  label="Last Name"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newTrainee.language"
                                  label="Language"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newTrainee.email"
                                  label="Email"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newTrainee.credit"
                                  label="Credit"
                              ></v-text-field>
                            </v-col>
                          </v-row>
                          <v-row>
                            <v-col
                                cols="12"
                                lg="6"
                            >
                              <v-menu
                                  ref="menu1"
                                  v-model="menu1"
                                  :close-on-content-click="false"
                                  transition="scale-transition"
                                  offset-y
                                  max-width="290px"
                                  min-width="auto"
                              >
                                <template v-slot:activator="{ on, attrs }">
                                  <v-text-field
                                      v-model="dateFormatted"
                                      label="Date begin"
                                      hint="MM/DD/YYYY format"
                                      persistent-hint
                                      prepend-icon="mdi-calendar"
                                      v-bind="attrs"
                                      @blur="date = parseDate(dateFormatted)"
                                      v-on="on"
                                  ></v-text-field>
                                </template>
                                <v-date-picker
                                    v-model="date"
                                    no-title
                                    @input="menu1 = false"
                                ></v-date-picker>
                              </v-menu>
                            </v-col>
                            <v-col
                                cols="12"
                                lg="6"
                            >
                              <v-menu
                                  ref="menu1"
                                  v-model="menu1"
                                  :close-on-content-click="false"
                                  transition="scale-transition"
                                  offset-y
                                  max-width="290px"
                                  min-width="auto"
                              >
                                <template v-slot:activator="{ on, attrs }">
                                  <v-text-field
                                      v-model="dateFormatted"
                                      label="Date end"
                                      hint="MM/DD/YYYY format"
                                      persistent-hint
                                      prepend-icon="mdi-calendar"
                                      v-bind="attrs"
                                      @blur="date = parseDate(dateFormatted)"
                                      v-on="on"
                                  ></v-text-field>
                                </template>
                                <v-date-picker
                                    v-model="date"
                                    no-title
                                    @input="menu1 = false"
                                ></v-date-picker>
                              </v-menu>
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
          </v-col>
        </v-row>

        <v-btn class="mt-5"
               color="primary"
               @click="e1 = 1"
        >
          Continue
        </v-btn>
      </v-stepper-content>

      <v-stepper-content step="5">
        <v-row>
          <v-col cols="12" sm="12">
            <v-data-table
                :headers="headers"
                :items="participants"
                sort-by="lastName"
                :single-expand="singleExpand"
                class="elevation-1"
                item-key="name"
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
                    <template v-slot:top>
                      <v-dialog v-model="dialogDelete" max-width="500px">
                        <v-card>
                          <v-card-title class="headline">Are you sure you want to
                            delete this
                            item?
                          </v-card-title>
                          <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn color="blue darken-1" text
                                   @click="closeDelete">Cancel
                            </v-btn>
                            <v-btn color="blue darken-1" text
                                   @click="deleteItemConfirm">
                              OK
                            </v-btn>
                            <v-spacer></v-spacer>
                          </v-card-actions>
                        </v-card>
                      </v-dialog>
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
                      v-model="dialogCreateSponsor"
                      max-width="600px"
                  >
                    <template v-slot:activator="{ on, attrs }">
                      <v-btn
                          color="primary"
                          dark
                          class="mb-2"
                          v-bind="attrs"
                          v-on="on"
                      >
                        New Sponsor
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
                                  v-model="newSponsor.name"
                                  label="First Name"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newSponsor.lastName"
                                  label="Last Name"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newSponsor.language"
                                  label="Language"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newSponsor.email"
                                  label="Email"
                              ></v-text-field>
                            </v-col>
                            <v-col
                                cols="12"
                                sm="6"
                                md="4"
                            >
                              <v-text-field
                                  v-model="newSponsor.credit"
                                  label="Credit"
                              ></v-text-field>
                            </v-col>
                          </v-row>
                          <v-row>
                            <v-col cols="12"
                                   sm="3"
                                   md="3">
                              <v-radio-group>
                                <v-radio
                                    label="H+1"
                                    value="n1"
                                ></v-radio>
                                <v-radio
                                    label="RH Manager"
                                    value="n2"
                                ></v-radio>
                                <v-radio
                                    label="Others role"
                                    value="other"
                                ></v-radio>
                              </v-radio-group>
                            </v-col>
                            <v-col cols="12"
                                   sm="9"
                                   md="9">
                              <v-select
                                  v-model="value"
                                  :items="participantsNames"
                                  attach
                                  chips
                                  label="Trainees"
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
          </v-col>
        </v-row>
        <v-btn class="mt-5"
               color="primary"
               @click="e1 = 1"
        >
          Continue
        </v-btn>
      </v-stepper-content>

      <v-stepper-content step="6">
        <v-row>
          <v-col cols="12" sm="12">
            <v-alert
                outlined
                type="warning"
                border="left"
            >
              Trainee Toto has no Sponsor
            </v-alert>
          </v-col>
          <v-col cols="12" sm="12">
            <v-data-table
                :headers="headersValidation"
                :items="participants"
                sort-by="lastName"
                :single-expand="singleExpand"
                class="elevation-1"
                item-key="name"
                :item-class="itemRowBackground"
                show-expand
            >
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
                  <v-btn
                      color="red"
                      dark
                      class="mb-2"
                      v-bind="attrs"
                      v-on="on"
                  >
                    Export List
                  </v-btn>
                </v-toolbar>
              </template>
              <template v-slot:expanded-item="{ headers, item }">
                <td :colspan="headers.length">
                  <v-data-table
                      :headers="headersValidation"
                      :items="item.sponsors"
                      class="elevation-3"
                      :hide-default-footer="true"
                  >
                  </v-data-table>
                </td>
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
          </v-col>
        </v-row>
        <v-btn class="mt-5"
               color="primary"
               @click="e1 = 1"
        >
          Continue
        </v-btn>

      </v-stepper-content>

      <v-stepper-content step="7">
        <v-container>
          <v-row>
            <v-switch
                v-model="switch1"
                label="Multiple Coach project"
            ></v-switch>
          </v-row>
          <v-row>
            <v-switch
                v-model="switch2"
                label="24 Hotline Coach"
            ></v-switch>
          </v-row>
          <v-row>
            <v-file-input
                v-model="files"
                placeholder="Upload presentations documents"
                label="File input"
                multiple
                prepend-icon="mdi-paperclip"
            >
              <template v-slot:selection="{ text }">
                <v-chip
                    small
                    label
                    color="primary"
                >
                  {{ text }}
                </v-chip>
              </template>
            </v-file-input>
          </v-row>
        </v-container>
        <v-btn
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
    sponsorRoles: [
      {
        role: 'N+1',
        definition: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ',
        chosen: false
      },
      {
        role: 'HR Manager',
        definition: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, se',
        chosen: false
      }
    ],
    headerSponsorRoles: [
      {text: 'Role', align: 'start', value: 'role'},
      {text: 'Definition', align: 'start', value: 'definition'},
      {text: '', value: 'chosen'}
    ],
    startDate: new Date().toISOString().substr(0, 10),
    endDate: new Date().toISOString().substr(0, 10),
    date2: new Date().toISOString().substr(0, 10),
    messages: 11,
    show: true,
    files: [],
    switch1: false,
    switch2: false,
    singleExpand: false,
    expanded: [],
    e1: 1,
    items: ["foo", "bar", "fizz", "buzz"],
    dates: ['2019-09-10', '2019-09-20'],
    dialogCreateTrainee: false,
    dialogCreateSponsor: false,
    dialogDelete: false,
    headers: [
      {text: 'FirstName', align: 'start', value: 'name'},
      {text: 'LastName', value: 'lastName'},
      {text: 'Language', value: 'language'},
      {text: 'Email', value: 'email'},
      {text: 'Credit', value: 'credit'},
      {text: 'Dates begin/end', value: 'dates'},
      {text: 'Actions', value: 'actions', sortable: false},
      {text: '', value: 'data-table-expand'}
    ],
    headersValidation: [
      {text: 'FirstName', align: 'start', value: 'name'},
      {text: 'LastName', value: 'lastName'},
      {text: 'Language', value: 'language'},
      {text: 'Email', value: 'email'},
      {text: 'Credit', value: 'credit'},
      {text: 'Dates begin/end', value: 'dates'},
      {text: '', value: 'data-table-expand'}
    ],
    headersSponsors: [
      {text: 'FirstName', align: 'start', value: 'name'},
      {text: 'LastName', value: 'lastName'},
      {text: 'Language', value: 'language'},
      {text: 'Email', value: 'email'},
      {text: 'Roles', value: 'role'},
      {text: 'Actions', value: 'actions', sortable: false}
    ],
    headersIDP: [
      {text: 'Headers', align: 'start', value: 'name'},
      {text: 'Col1', value: 'lastName'},
      {text: 'Col2', value: 'language'},
      {text: 'Col3', value: 'email'},
      {text: 'Actions', value: 'actions', sortable: false},
    ],
    participants: [],
    editedIndex: -1,
    newTrainee: {
      name: '',
      lastName: '',
      language: 0,
      email: '',
      credit: 0,
      dateBegin: '',
      dateEnd: ''
    },
    newSponsor: {
      name: '',
      lastName: '',
      language: 0,
      email: '',
      credit: 0,
      role: ''
    },
    defaultTrainee: {
      name: '',
      lastName: '',
      language: 0,
      email: '',
      credit: 0,
    },
    defaultSponsor: {
      name: '',
      lastName: '',
      language: 0,
      email: '',
      credit: 0,
      role: ''
    },
    participantsNames: ["Nicolas Mine", "John Dooz", "Jane Doo", "Matt Po", "Nicolas Minez", "John Dood", "Jane Doos", "Matt Pox", "Nicolas Minev", "John Doos", "Jane Dooh", "Matt Poh"]
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
      this.participants = [
        {
          name: 'Nicolas',
          lastName: 'Lulu',
          language: 'FR',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'sponsor',
          dates: '05/01/21 - 05/03/21',
          color: 'red-line'
        },
        {
          name: 'Nicia',
          lastName: 'Mine',
          language: 'NL',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'sponsor',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Cosma',
          lastName: 'Mine',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Janey',
          lastName: 'Mine',
          language: 'FR',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Nicolette',
          lastName: 'Dupond',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Gary',
          lastName: 'Lele',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Edward mm',
          lastName: 'Lele',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Tyr',
          lastName: 'Mine',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Christina',
          lastName: 'Christina',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
        {
          name: 'Donalda',
          lastName: 'Mine',
          language: 'EN',
          email: 'toto@gmail.com',
          credit: 5,
          sponsors: [
            {
              name: 'Nicolas',
              lastName: 'sd',
              language: 'FR',
              email: '@gmail.com',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'qsds',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            },
            {
              name: 'Nicolas',
              lastName: 'dqs',
              email: '@gmail.com',
              language: 'FR',
              role: 'N+1'
            }],
          category: 'trainee',
          dates: '05/01/21 - 05/03/21'
        },
      ]
    },

    functionEvents(date) {
      const [, , day] = date.split('-')
      if ([12, 17, 28].includes(parseInt(day, 10))) return true
      if ([1, 19, 22].includes(parseInt(day, 10))) return ['red', '#00f']
      return false
    },

    editItem(item) {
      this.editedIndex = this.participants.indexOf(item)
      this.newTrainee = Object.assign({}, item)
      this.dialogCreateTrainee = true
    }
    ,

    deleteItem(item) {
      this.editedIndex = this.participants.indexOf(item)
      this.newTrainee = Object.assign({}, item)
      this.dialogDelete = true
    }
    ,

    deleteItemConfirm() {
      this.participants.splice(this.editedIndex, 1)
      this.closeDelete()
    }
    ,

    close() {
      this.dialogCreateTrainee = false
      this.$nextTick(() => {
        this.newTrainee = Object.assign({}, this.defaultTrainee)
        this.editedIndex = -1
      })
    }
    ,
    closeDelete() {
      this.dialogDelete = false
      this.$nextTick(() => {
        this.newTrainee = Object.assign({}, this.defaultTrainee)
        this.editedIndex = -1
      })
    }
    ,

    save() {
      if (this.editedIndex > -1) {
        Object.assign(this.participants[this.editedIndex], this.newTrainee)
      } else {
        this.participants.push(this.newTrainee)
      }
      this.close()
    }
    ,

    itemRowBackground: function (item) {
      return item.name === 'Nicolette' ? 'style-1' : ''
    }
  },
}
</script>
<style>
.style-1 {
  background-color: #fb8c00
}

.style-2 {
  background-color: rgb(114, 114, 67)
}
</style>