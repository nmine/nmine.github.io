<template>
    <div>
        <v-row>
            <v-col cols="4">
                <v-card
                        color="#385F73"
                        dark
                        class="mx-auto pa-5"
                >
                    <v-card-title class="headline">
                        Demande de session
                    </v-card-title>

                    <v-card-subtitle>How to use Minecoaching...</v-card-subtitle>

                    <v-card-actions>
                        <v-btn text>
                            Action
                        </v-btn>
                    </v-card-actions>
                </v-card>
            </v-col>
            <v-col cols="4">
                <v-card class="mx-auto pa-5">
                    <v-list
                            subheader
                            two-line
                    >
                        <v-subheader inset>Folders</v-subheader>

                        <v-list-item
                                v-for="folder in folders"
                                :key="folder.title"
                        >
                            <v-list-item-avatar>
                                <v-icon
                                        class="grey lighten-1"
                                        dark
                                >
                                    mdi-folder
                                </v-icon>
                            </v-list-item-avatar>

                            <v-list-item-content>
                                <v-list-item-title v-text="folder.title"></v-list-item-title>

                                <v-list-item-subtitle v-text="folder.subtitle"></v-list-item-subtitle>
                            </v-list-item-content>

                            <v-list-item-action>
                                <v-btn icon>
                                    <v-icon color="grey lighten-1">mdi-information</v-icon>
                                </v-btn>
                            </v-list-item-action>
                        </v-list-item>

                        <v-divider inset></v-divider>

                        <v-subheader inset>Files</v-subheader>

                        <v-list-item
                                v-for="file in files"
                                :key="file.title"
                        >
                            <v-list-item-avatar>
                                <v-icon
                                        :class="file.color"
                                        dark
                                        v-text="file.icon"
                                ></v-icon>
                            </v-list-item-avatar>

                            <v-list-item-content>
                                <v-list-item-title v-text="file.title"></v-list-item-title>

                                <v-list-item-subtitle v-text="file.subtitle"></v-list-item-subtitle>
                            </v-list-item-content>

                            <v-list-item-action>
                                <v-btn icon>
                                    <v-icon color="grey lighten-1">mdi-information</v-icon>
                                </v-btn>
                            </v-list-item-action>
                        </v-list-item>
                    </v-list>
                </v-card>
            </v-col>
            <v-col cols="4">
                <v-sheet height="600">
                    <v-calendar
                            ref="calendar"
                            v-model="value"
                            color="primary"
                            type="4day"
                            :events="events"
                            :event-color="getEventColor"
                            :event-ripple="false"
                            @change="getEvents"
                            @mousedown:event="startDrag"
                            @mousedown:time="startTime"
                            @mousemove:time="mouseMove"
                            @mouseup:time="endDrag"
                            @mouseleave.native="cancelDrag"
                    >
                        <template v-slot:event="{ event, timed, eventSummary }">
                            <div
                                    class="v-event-draggable"
                                    v-html="eventSummary()"
                            ></div>
                            <div
                                    v-if="timed"
                                    class="v-event-drag-bottom"
                                    @mousedown.stop="extendBottom(event)"
                            ></div>
                        </template>
                    </v-calendar>
                </v-sheet>
            </v-col>
        </v-row>
    </div>
</template>

<script>
    export default {
        name: 'Home',
        data: () => ({
            value: '',
            events: [],
            colors: ['#2196F3', '#3F51B5', '#673AB7', '#00BCD4', '#4CAF50', '#FF9800', '#757575'],
            names: ['Meeting', 'Holiday', 'PTO', 'Travel', 'Event', 'Birthday', 'Conference', 'Party'],
            dragEvent: null,
            dragStart: null,
            createEvent: null,
            createStart: null,
            extendOriginal: null,
            files: [
                {
                    color: 'blue',
                    icon: 'mdi-clipboard-text',
                    subtitle: 'Jan 20, 2014',
                    title: 'Vacation itinerary',
                },
                {
                    color: 'amber',
                    icon: 'mdi-gesture-tap-button',
                    subtitle: 'Jan 10, 2014',
                    title: 'Kitchen remodel',
                },
            ],
            folders: [
                {
                    subtitle: 'Jan 9, 2014',
                    title: 'Photos',
                },
                {
                    subtitle: 'Jan 17, 2014',
                    title: 'Recipes',
                },
                {
                    subtitle: 'Jan 28, 2014',
                    title: 'Work',
                },
            ],
        }),
        methods: {
            startDrag({event, timed}) {
                if (event && timed) {
                    this.dragEvent = event
                    this.dragTime = null
                    this.extendOriginal = null
                }
            },
            startTime(tms) {
                const mouse = this.toTime(tms)

                if (this.dragEvent && this.dragTime === null) {
                    const start = this.dragEvent.start

                    this.dragTime = mouse - start
                } else {
                    this.createStart = this.roundTime(mouse)
                    this.createEvent = {
                        name: `Event #${this.events.length}`,
                        color: this.rndElement(this.colors),
                        start: this.createStart,
                        end: this.createStart,
                        timed: true,
                    }

                    this.events.push(this.createEvent)
                }
            },
            extendBottom(event) {
                this.createEvent = event
                this.createStart = event.start
                this.extendOriginal = event.end
            },
            mouseMove(tms) {
                const mouse = this.toTime(tms)

                if (this.dragEvent && this.dragTime !== null) {
                    const start = this.dragEvent.start
                    const end = this.dragEvent.end
                    const duration = end - start
                    const newStartTime = mouse - this.dragTime
                    const newStart = this.roundTime(newStartTime)
                    const newEnd = newStart + duration

                    this.dragEvent.start = newStart
                    this.dragEvent.end = newEnd
                } else if (this.createEvent && this.createStart !== null) {
                    const mouseRounded = this.roundTime(mouse, false)
                    const min = Math.min(mouseRounded, this.createStart)
                    const max = Math.max(mouseRounded, this.createStart)

                    this.createEvent.start = min
                    this.createEvent.end = max
                }
            },
            endDrag() {
                this.dragTime = null
                this.dragEvent = null
                this.createEvent = null
                this.createStart = null
                this.extendOriginal = null
            },
            cancelDrag() {
                if (this.createEvent) {
                    if (this.extendOriginal) {
                        this.createEvent.end = this.extendOriginal
                    } else {
                        const i = this.events.indexOf(this.createEvent)
                        if (i !== -1) {
                            this.events.splice(i, 1)
                        }
                    }
                }

                this.createEvent = null
                this.createStart = null
                this.dragTime = null
                this.dragEvent = null
            },
            roundTime(time, down = true) {
                const roundTo = 15 // minutes
                const roundDownTime = roundTo * 60 * 1000

                return down
                    ? time - time % roundDownTime
                    : time + (roundDownTime - (time % roundDownTime))
            },
            toTime(tms) {
                return new Date(tms.year, tms.month - 1, tms.day, tms.hour, tms.minute).getTime()
            },
            getEventColor(event) {
                const rgb = parseInt(event.color.substring(1), 16)
                const r = (rgb >> 16) & 0xFF
                const g = (rgb >> 8) & 0xFF
                const b = (rgb >> 0) & 0xFF

                return event === this.dragEvent
                    ? `rgba(${r}, ${g}, ${b}, 0.7)`
                    : event === this.createEvent
                        ? `rgba(${r}, ${g}, ${b}, 0.7)`
                        : event.color
            },
            getEvents({start, end}) {
                const events = []

                const min = new Date(`${start.date}T00:00:00`).getTime()
                const max = new Date(`${end.date}T23:59:59`).getTime()
                const days = (max - min) / 86400000
                const eventCount = this.rnd(days, days + 20)

                for (let i = 0; i < eventCount; i++) {
                    const timed = this.rnd(0, 3) !== 0
                    const firstTimestamp = this.rnd(min, max)
                    const secondTimestamp = this.rnd(2, timed ? 8 : 288) * 900000
                    const start = firstTimestamp - (firstTimestamp % 900000)
                    const end = start + secondTimestamp

                    events.push({
                        name: this.rndElement(this.names),
                        color: this.rndElement(this.colors),
                        start,
                        end,
                        timed,
                    })
                }

                this.events = events
            },
            rnd(a, b) {
                return Math.floor((b - a + 1) * Math.random()) + a
            },
            rndElement(arr) {
                return arr[this.rnd(0, arr.length - 1)]
            },
        },
    }
</script>
