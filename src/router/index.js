import Vue from 'vue'
import VueRouter from 'vue-router'
import CreateProjectStepper from "../components/creationProject/CreateProjectStepper";
import Home from "../views/Home";
import IDP from "../views/IDP";
import Sessions from "../views/Sessions";

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
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
