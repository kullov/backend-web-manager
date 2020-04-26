<template src="./MainLayout.html"></template>
<style lang="scss" scoped src="./MainLayout.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { AsyncComponent } from 'vue';

const Create: AsyncComponent = () =>
  ({
    component: import("./Create.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
const Login: AsyncComponent = () =>
  ({
    component: import("./Create.vue"),
    error: undefined,
    delay: 0,
    timeout: undefined
  } as any);
  
@Component({
  components: {
    Create,
    Login,
  }
})
export default class MainLayout extends Vue {
  private isLoading: boolean = false;
  private selectedTab: string = "tab1";
  public tabs: any[] = [
    {
      name: "tab1",
      label: "Create",
      content: "Create"
    },
    {
      name: "tab2",
      label: "Login",
      content: "Login"
    },
  ];
}
</script>