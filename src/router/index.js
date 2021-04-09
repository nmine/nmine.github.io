import Vue from 'vue'
import VueRouter from 'vue-router'
import CreateProjectStepper from "../components/creationProject/CreateProjectStepper";
import Home from "../views/Home";
import IDP from "../views/Objectifs";
import Sessions from "../views/Sessions";
import Profile from "../views/Profile";
import Diary from "@/views/Diary";
import ExternalSupport from "@/views/ExternalSupport";
import Progress from "@/views/Progress";
import ExternalSupportFeedBack from "@/views/ExternalSupportFeedBack";
import HomeCoach from "@/views/coach/HomeCoach";
import ChatCoach from "@/views/coach/ChatCoach";

Vue.use(VueRouter)

const routes = [
    {
        path: '/projectsCreation',
        name: 'CreateProjectStepper',
        component: CreateProjectStepper
    },
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    {
        path: '/idp',
        name: 'IDP',
        component: IDP
    },
    {
        path: '/sessions',
        name: 'Sessions',
        component: Sessions
    },
    {
        path: '/profile',
        name: 'Profile',
        component: Profile
    },
    {
        path: '/diary',
        name: 'Diary',
        component: Diary
    },
    {
        path: '/externalsupport',
        name: 'External Support',
        component: ExternalSupport
    },
    {
        path: '/progress',
        name: 'Progress',
        component: Progress
    },
    {
        path: '/externalsupportfeedback',
        name: 'ExternalSupportFeedback',
        component: ExternalSupportFeedBack
    },
    {
        path: '/homecoach',
        name: 'Home Coach',
        component: HomeCoach
    },
    {
        path: '/chatcoach',
        name: 'Chat Coach',
        component: ChatCoach
    }
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

export default router
