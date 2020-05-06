<template src="./Requests.html"></template>
<style lang="scss" scoped src="./Requests.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { requestService } from '../../services/request.service';

@Component
export default class Requests extends Vue {
  private listRequests: any[] = [];
  
  private created() {
    this.getAllRequests();
  }

  private getAllRequests() {
    requestService.getAllRequests().then((res: any) => {
      this.listRequests = res.data;
    });
  }
}
</script>