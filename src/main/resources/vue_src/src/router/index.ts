import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '@/views/Home.vue'
import About from '@/views/About.vue'
import InputRequest from '@/views/request/input-request/InputRequest.vue'
import Organization from '@/views/src-1002/list-all/Organizations.vue'
// import OrganizationUpdate from '@/views/src-1002/src-1002C/'
import OrganizationDetails from '@/views/src-1002/src-1002A/OrganizationPage.vue'

// // prettier-ignore
const Register = () => import('@/views/auth/register/Register.vue');
const Login = () => import('@/views/auth/login/Login.vue');

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
        path: 'main-layout-teacher',
        name: 'routes.teacher',
        // component: MainTeacher,
      },
      {
        path: 'intern/edit/:internId',
        alias: 'intern/edit',
        name: 'routes.intern.edit',
        component: InputIntern,
      },
      {
        path: '/interns',
        alias: 'interns/list',
        name: 'routes.intern.list',
        component: Interns,
        //meta: { authorities: [Authority.USER] }
      },
      // {
      //   path: '/intern/new',
      //   name: 'InternCreate',
      //   component: InternUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
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
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: 'organization',
        alias: 'organization/list',
        name: 'routes.organization.list',
        component: Organization,
        //meta: { authorities: [Authority.USER] }
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
        //meta: { authorities: [Authority.USER] }
      }
      
      // ,
      // {
      //   path: '/teacher',
      //   name: 'Teacher',
      //   component: Teacher,
      //   //meta: { authorities: [Authority.USER] }
      // },
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
      ,
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
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: 'register-request/create',
        name: 'routes.registerRequest.create',
        component: RegisterRequestUpdate,
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: 'register-request/edit/:registerRequestId',
        name: 'routes.registerRequest.edit',
        component: RegisterRequestUpdate,
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: 'register-request/view/:registerRequestId',
        name: 'routes.registerRequest.view',
        component: RegisterRequestDetails,
        //meta: { authorities: [Authority.USER] }
      }
      ,
      {
        path: 'request-assignment',
        alias: 'request-assignment/list',
        name: 'routes.requestAssignment.list',
        component: RequestAssignment,
        //meta: { authorities: [Authority.USER] }
      },
      // {
      //   path: 'request-assignment/create',
      //   name: 'routes.requestAssignment.create',
      //   component: RequestAssignmentUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/request-assignment/edit/:requestAssignmentId',
      //   name: 'routes.requestAssignment.edit',
      //   component: RequestAssignmentUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/request-assignment/view/:requestAssignmentId',
      //   name: 'routes.requestAssignment.view',
      //   component: RequestAssignmentDetails,
      //   //meta: { authorities: [Authority.USER] }
      // }
      // ,
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
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: '/request/edit/:requestId',
        name: 'routes.request.edit',
        component: RequestUpdate,
        //meta: { authorities: [Authority.USER] }
      },
      {
        path: '/request/view/:requestId',
        name: 'routes.request.view',
        component: RequestDetails,
        //meta: { authorities: [Authority.USER] }
      }
      // ,
      // {
      //   path: '/ability-category',
      //   name: 'AbilityCategory',
      //   component: AbilityCategory,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/ability-category/new',
      //   name: 'AbilityCategoryCreate',
      //   component: AbilityCategoryUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/ability-category/:abilityCategoryId/edit',
      //   name: 'AbilityCategoryEdit',
      //   component: AbilityCategoryUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/ability-category/:abilityCategoryId/view',
      //   name: 'AbilityCategoryView',
      //   component: AbilityCategoryDetails,
      //   //meta: { authorities: [Authority.USER] }
      // }
      // ,
      // {
      //   path: '/status',
      //   name: 'Status',
      //   component: Status,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/status/new',
      //   name: 'StatusCreate',
      //   component: StatusUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/status/:statusId/edit',
      //   name: 'StatusEdit',
      //   component: StatusUpdate,
      //   //meta: { authorities: [Authority.USER] }
      // },
      // {
      //   path: '/status/:statusId/view',
      //   name: 'StatusView',
      //   component: StatusDetails,
      //   //meta: { authorities: [Authority.USER] }
      // }
      
    ]
  },
  {
    path: '/register',
    name: 'routes.auth.register',
    component: Register,
    // meta: { requiresAuth: false },
  },
  {
    path: '/login',
    name: 'routes.auth.login',
    component: Login,
    // meta: { requiresAuth: false },
  }
  ];
const router = new  VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
});

// router.beforeEach((to, from, next) => {
//   // Check user role from local storage
//   if (to.meta.requiresAuth) {
//     if (authService.checkPermission(to.meta.functionName)) {
//       next();
//     } else {
//       next({ name: 'routes.unauthorized' });
//     }
//   } else {
//     next();
//   }
// });
export default router;