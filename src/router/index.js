import Vue from 'vue'
import VueRouter from 'vue-router'
import CreateProjectStepper from "../components/creationProject/CreateProjectStepper";

Vue.use(VueRouter)

const routes = [
  {
    path: '/projectsCreation',
    name: 'CreateProjectStepper',
    component: CreateProjectStepper
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
