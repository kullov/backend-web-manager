<template src="./MainLayout.html"></template>
<style lang="scss" scoped src="./MainLayout.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { AsyncComponent } from 'vue';

const OrganizationPage: AsyncComponent = () =>
  ({
    component: import("./src-1002A/OrganizationPage.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Create: AsyncComponent = () =>
  ({
    component: import("./src-1002C/Create.vue"),
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
  
@Component({
  components: {
    Create,
    OrganizationPage,
    Ability,
    Requests,
  }
})
export default class MainLayout extends Vue {
  private isLoading: boolean = false;
  private isRequestComponentVisible: boolean = false;
  private isProfileComponentVisible: boolean = false;
  private isCreateComponentVisible: boolean = false;
  private isAbilityComponentVisible: boolean = false;
  
  private selectedTab: any = "1";
  public tabs: any[] = [
    {
      name: "1",
      label: "Organization Page",
      content: "OrganizationPage"
    },
    {
      name: "2",
      label: "Create",
      content: "Create"
    },
    {
      name: "3",
      label: "Ability",
      content: "ability"
    },
    {
      name: "4",
      label: "Requests",
      content: "Requests"
    },
  ];

  private created() {
    this.isProfileComponentVisible = true;
  }

  private openTab() {
    switch (this.selectedTab) {
      case '1':
        this.isCreateComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isProfileComponentVisible = true;
      break;
      case '2':
        this.isProfileComponentVisible = false;
        this.isCreateComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isRequestComponentVisible = true;
        break;
      case '3':
        this.isProfileComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isAbilityComponentVisible = false;
        this.isCreateComponentVisible = true;
        break;
      case '4':
        this.isProfileComponentVisible = false;
        this.isRequestComponentVisible = false;
        this.isCreateComponentVisible = false;
        this.isAbilityComponentVisible = true;
        break;
      default:
    }

  }
}
</script>