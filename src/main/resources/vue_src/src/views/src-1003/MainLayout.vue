<template src="./MainLayout.html"></template>
<style lang="scss" scoped src="./MainLayout.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { AsyncComponent } from 'vue';

import abilityModule from '../../store/ability.module';

const Interns: AsyncComponent = () =>
  ({
    component: import("../intern/Intern.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Teacher: AsyncComponent = () =>
  ({
    component: import("./src-1003A/Teacher.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);

const InternPageDetail: AsyncComponent = () =>
  ({
    component: import("../intern/intern-detail/InternPageDetail.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Organizations: AsyncComponent = () =>
  ({
    component: import("../src-1002/list-all/Organizations.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
  
@Component({
  components: {
    Interns,
    Organizations,
    Teacher,
    InternPageDetail,
  }
})
export default class MainLayout extends Vue {
  private isLoading: boolean = false;
  private isListInternsComponentVisible: boolean = false;
  private isProfileComponentVisible: boolean = false;
  private isListOrganizationComponentVisible: boolean = false;
  
  private selectedTab: string = "tab1";
  // private beforeCreate() {
  //   this.$store.registerModule(
  //     'abilityModule',
  //     abilityModule
  //   );
  // }

  private beforeDestroy() {
    // this.$store.dispatch(
    //   'abilityModule' + "/RESET_STATE"
    // );
    // this.$store.unregisterModule('abilityModule');

  }

  created() {
    this.isProfileComponentVisible = true;
  }

  private openTab() {
    switch (this.selectedTab) {
      case '1':
        this.isListInternsComponentVisible = false;
        this.isListOrganizationComponentVisible = false;
        this.isProfileComponentVisible = true;
      break;
      case '2':
        this.isProfileComponentVisible = false;
        this.isListOrganizationComponentVisible = false;
        this.isListInternsComponentVisible = true;
        break;
      case '3':
        this.isListInternsComponentVisible = false;
        this.isProfileComponentVisible = false;
        this.isListOrganizationComponentVisible = true;
        break;
      case '4':
        // this.isProfileComponentVisible = false;
        // this.isRequestComponentVisible = false;
        // this.isCreateComponentVisible = false;
        // this.isAbilityComponentVisible = true;
        break;
      default:
    }

  }

//   private openRequestComponent() {
//     this.isRequestComponentVisible = true;
//   }
}
</script>