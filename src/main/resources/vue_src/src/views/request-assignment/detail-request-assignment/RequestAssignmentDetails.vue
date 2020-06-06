
<template src="./RequestAssignmentDetails.html"></template>
<style lang="scss" scoped src="./RequestAssignmentDetails.scss"></style>
<script lang="ts">
import { Component, Vue, Inject } from 'vue-property-decorator';

import { RequestAssignmentModel } from '@/models/RequestAssignmentModel';
import { requestAssignmentService } from '@/services/requestAssignment.service';

@Component
export default class RequestAssignmentDetails extends Vue {
  public requestAssignment: RequestAssignmentModel = {};

  beforeRouteEnter(to: any, from: any, next: any) {
    next((vm: any) => {
      if (to.params.requestAssignmentId) {
        vm.retrieveRequestAssignment(to.params.requestAssignmentId);
      }
    });
  }

  public retrieveRequestAssignment(requestAssignmentId: any) {
    requestAssignmentService
      .getRequestAssignment(requestAssignmentId)
      .then((res: any) => {
        this.requestAssignment = res;
      });
  }

  public previousState() {
    this.$router.go(-1);
  }
}
</script>
