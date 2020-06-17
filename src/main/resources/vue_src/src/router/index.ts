import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '@/views/Home.vue'
import About from '@/views/About.vue'
import InputRequest from '@/views/request/input-request/InputRequest.vue'
import Organization from '@/views/src-1002/list-all/Organizations.vue'
import OrganizationDetails from '@/views/src-1002/src-1002A/OrganizationPage.vue'
import Component from 'vue-class-component'
import { Authority } from '@/components/shared/security/authority'

// // prettier-ignore
const Register = () => import('@/views/auth/register/Register.vue');
const Login = () => import('@/views/auth/login/Login.vue');
const User = () => import('@/views/auth/User.vue');
const Error = () => import('@/views/Error.vue');

const Interns = () => import('@/views/intern/Interns.vue');
const InputIntern = () => import('@/views/intern/input-intern/InputIntern.vue');
// // prettier-ignore
// const InternUpdate = () => import('@/views/intern/intern-update.vue');
// // prettier-ignore
const InternPageDetail = () => import('@/views/intern/intern-detail/InternPageDetail.vue');
// // prettier-ignore
// const Teacher = () => import('@/views/teacher/teacher.vue');
// // prettier-ignore
// const TeacherUpdate = () => import('@/views/teacher/teacher-update.vue');
// // prettier-ignore
// const TeacherDetails = () => import('@/views/teacher/teacher-details.vue');
// // prettier-ignore
const Ability = () => import('@/views/ability/Ability.vue');
// // prettier-ignore
const RequestAssignment = () => import('@/views/request-assignment/RequestAssignment.vue');
// // prettier-ignore
// const AbilityDetails = () => import('@/views/ability/ability-details.vue');
// prettier-ignore
const RegisterRequest = () => import('@/views/register/Register.vue');
// prettier-ignore
const RegisterRequestUpdate = () => import('@/views/register/input-register/InputRegister.vue');
// prettier-ignore
const RegisterRequestDetails = () => import('@/views/register/Register.vue');
// prettier-ignore
const Requests = () => import('@/views/request/Requests.vue');
// prettier-ignore
const RequestUpdate = () => import('@/views/request/input-request/InputRequest.vue');
// prettier-ignore
const RequestDetails = () => import('@/views/request/detail/DetailRequest.vue');
// prettier-ignore
// const AbilityCategory = () => import('@/views/ability-category/ability-category.vue');
// // prettier-ignore
// const AbilityCategoryUpdate = () => import('@/views/ability-category/ability-category-update.vue');
// // prettier-ignore
// const AbilityCategoryDetails = () => import('@/views/ability-category/ability-category-details.vue');
// // prettier-ignore
// const Status = () => import('@/views/status/status.vue');
// // prettier-ignore
// const StatusUpdate = () => import('@/views/status/status-update.vue');
// // prettier-ignore
// const StatusDetails = () => import('@/views/status/status-details.vue');
// // jhipster-needle-add-entity-to-router-import - JHipster will import entities to the router here

Component.registerHooks([
  'beforeRouteEnter',
  'beforeRouteLeave',
  'beforeRouteUpdate' // for vue-router 2.2+
]);

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'routes.home',
    component: Home,
    redirect: { name: 'routes.about' },
    children: [
      {
        path: 'about',
        name: 'routes.about',
        component: About,
      },
      {
        path: 'abilities',
        name: 'routes.ability',
        component: Ability
      },
      {
        path: 'requests',
        name: 'Requests',
        component: Requests
      },
      {
        path: 'main-layout-organization',
        name: 'MainOrganization',
        // component: MainOrganization,
      },
      {
        path: 'intern/edit/:internId',
        alias: 'intern/edit',
        name: 'routes.intern.edit',
        component: InputIntern,
        meta: { authorities: [Authority.INTERN] }
      },
      {
        path: '/interns',
        alias: 'interns/list',
        name: 'routes.intern.list',
        component: Interns,
        meta: { authorities: [Authority.TEACHER] }
      },
      // {
      //   path: '/intern/:internId/edit',
      //   name: 'InternEdit',
      //   component: InternUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      {
        path: '/intern/view/:internId',
        name: 'routes/intern.view',
        component: InternPageDetail,
        meta: { authorities: [Authority.INTERN] }
      },
      {
        path: 'organization',
        alias: 'organization/list',
        name: 'routes.organization.list',
        component: Organization,
        meta: { authorities: [Authority.TEACHER] }
      },
      // {
      //   path: '/organization/new',
      //   name: 'OrganizationCreate',
      //   component: OrganizationUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/organization/:organizationId/edit',
      //   name: 'OrganizationEdit',
      //   component: OrganizationUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      {
        path: '/organization/view/:organizationId',
        name: 'routes.organization.view',
        component: OrganizationDetails,
        meta: { authorities: [Authority.INTERN, Authority.ORGANIZATION, Authority.TEACHER] }
      }
      
      ,
      {
        path: '/teacher',
        name: 'Teacher',
        component: Requests,
      },
      // {
      //   path: '/teacher/new',
      //   name: 'TeacherCreate',
      //   component: TeacherUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/teacher/:teacherId/edit',
      //   name: 'TeacherEdit',
      //   component: TeacherUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/teacher/:teacherId/view',
      //   name: 'TeacherView',
      //   component: TeacherDetails,
      //   //meta: { authorities: [Authority.USER] }
      // }
      {
        path: '/ability',
        name: 'Ability',
        component: Ability,
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: 'register-request',
        alias: 'register/list',
        name: 'routes.registerRequest.list',
        component: RegisterRequest,
        meta: { authorities: [Authority.INTERN, Authority.TEACHER, Authority.ORGANIZATION] }
      },
      {
        path: 'register-request/create',
        name: 'routes.registerRequest.create',
        component: RegisterRequestUpdate,
        meta: { authorities: [Authority.INTERN, Authority.TEACHER] }
      },
      {
        path: 'register-request/edit/:registerRequestId',
        name: 'routes.registerRequest.edit',
        component: RegisterRequestUpdate,
        meta: { authorities: [Authority.INTERN, Authority.TEACHER] }
      },
      {
        path: 'register-request/view/:registerRequestId',
        name: 'routes.registerRequest.view',
        component: RegisterRequestDetails,
        meta: { authorities: [Authority.TEACHER, Authority.INTERN, Authority.ORGANIZATION] }
      }
      ,
      {
        path: 'request-assignment',
        alias: 'request-assignment/list',
        name: 'routes.requestAssignment.list',
        component: RequestAssignment,
        meta: { authorities: [Authority.TEACHER, Authority.INTERN, Authority.ORGANIZATION] }
      },
      {
        path: 'request',
        alias: 'request/list',
        name: 'routes.request.list',
        component: Requests,
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: '/request/create',
        name: 'routes.request.create',
        component: RequestUpdate,
        meta: { authorities: [Authority.ORGANIZATION] }
      },
      {
        path: '/request/edit/:requestId',
        name: 'routes.request.edit',
        component: RequestUpdate,
        meta: { authorities: [Authority.ORGANIZATION] }
      },
      {
        path: '/request/view/:requestId',
        name: 'routes.request.view',
        component: RequestDetails,
      }
    ]
  },
  {
    path: '/register/:typeUser',
    name: 'routes.auth.register',
    component: Register,
    meta: { requiresAuth: false },
  },
  {
    path: '/login',
    name: 'routes.auth.login',
    component: Login,
    meta: { requiresAuth: false },
  },
  {
    path: '/user/:id',
    name: 'routes.user',
    component: User,
    meta: { requiresAuth: false },
  },
  {
    path: '/forbidden',
    name: 'routes.forbidden',
    component: Error,
    meta: { requiresAuth: false },
  }
  ];
const router = new  VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
});

export default router;