<template src="./MainLayout.html"></template>
<style lang="scss" scoped src="./MainLayout.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { AsyncComponent } from 'vue';

const InternPage: AsyncComponent = () =>
  ({
    component: import("./src-1001A/InternPage.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
// const Create: AsyncComponent = () =>
//   ({
//     component: import("./src-1002C/Create.vue"),
//     error: undefined,
//     delay: 0,
//     timeout: undefined
//   } as any);
// const ability: AsyncComponent = () =>
//   ({
//     component: import("../ability/Ability.vue"),
//     error: undefined,
//     delay: 0,
//     timeout: undefined
//   } as any);
const Requests: AsyncComponent = () =>
  ({
    component: import("../request/Requests.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
  
@Component({
  components: {
    InternPage,
    // Create,
    // OrganizationPage,
    // ability,
    Requests,
  }
})
export default class MainLayout extends Vue {
  private isLoading: boolean = false;
  private isRequestComponentVisible: boolean = false;
  
  
  private selectedTab: string = "tab1";
  public tabs: any[] = [
    {
      name: "tab1",
      label: "Intern Profile",
      content: "InternPage"
    },
    // {
    //   name: "tab2",
    //   label: "Create",
    //   content: "Create"
    // },
    // {
    //   name: "tab3",
    //   label: "Ability",
    //   content: "ability"
    // },
    {
      name: "tab4",
      label: "Requests",
      content: "Requests"
    },
  ];

  private openRequestComponent() {
    this.isRequestComponentVisible = true;
  }
}
</script>