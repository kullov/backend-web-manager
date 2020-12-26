<template src="./MainLayout.html"></template>
<style lang="scss" scoped src="./MainLayout.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { AsyncComponent } from 'vue';

import abilityModule from '../../store/ability.module';

const InternPage: AsyncComponent = () =>
  ({
    component: import("./Interns.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Ability: AsyncComponent = () =>
  ({
    component: import("../ability/Ability.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Requests: AsyncComponent = () =>
  ({
    component: import("../request/Requests.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);

const InternPageDetail: AsyncComponent = () =>
  ({
    component: import("./intern-detail/InternPageDetail.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
  
@Component({
  components: {
    InternPage,
    // InputRequest,
    InternPageDetail,
    Ability,
    Requests,
  }
})
export default class MainLayout extends Vue {
  private isLoading: boolean = false;
  private isRequestComponentVisible: boolean = false;
  private isProfileComponentVisible: boolean = false;
  private isInputRequestComponentVisible: boolean = false;
  private isAbilityComponentVisible: boolean = false;
  
  
  private selectedTab: string = "tab1";
  private beforeInputRequest() {
    this.$store.registerModule(
      'abilityModule',
      abilityModule
    );
  }

  private beforeDestroy() {
    this.$store.dispatch(
      'abilityModule' + "/RESET_STATE"
    );
    this.$store.unregisterModule('abilityModule');

  }

  created() {
    this.isProfileComponentVisible = true;
  }

  private openTab() {
    switch (this.selectedTab) {
      case '1':
        this.isInputRequestComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isProfileComponentVisible = true;
      break;
      case '2':
        this.isProfileComponentVisible = false;
        this.isInputRequestComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isRequestComponentVisible = true;
        break;
      case '3':
        this.isProfileComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isInputRequestComponentVisible = true;
        break;
      case '4':
        this.isProfileComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isInputRequestComponentVisible = false;
        this.isAbilityComponentVisible = true;
        break;
      default:
    }

  }

  private openRequestComponent() {
    this.isRequestComponentVisible = true;
  }
}
</script>