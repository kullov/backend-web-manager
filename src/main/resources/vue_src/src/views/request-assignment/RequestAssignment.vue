<template src="./RequestAssignment.html"></template>
<style lang="scss" scoped src="./RequestAssignment.scss"></style>
<script lang="ts">
import { mixins } from 'vue-class-component';

import { Component, Inject, Vue } from 'vue-property-decorator';
import Vue2Filters from 'vue2-filters';
import { requestAssignmentService } from '@/services/requestAssignment.service';
import { RequestAssignmentModel } from '../../models/RequestAssignmentModel';

@Component
export default class RequestAssignment extends Vue {
  private removeId?: number;

  public requestAssignments: RequestAssignmentModel[] = [];

  public isFetching: boolean = false;

  public mounted(): void {
    this.retrieveAllRequestAssignments();
  }

  public clear(): void {
    this.retrieveAllRequestAssignments();
  }

  public retrieveAllRequestAssignments(): void {
    this.isFetching = true;

    requestAssignmentService
      .getAllRequestAssignments()
      .then(
        res => {
          this.requestAssignments = res.data;
          this.isFetching = false;
        },
        err => {
          this.isFetching = false;
        }
      );
  }

  public prepareRemove(instance: RequestAssignmentModel): void {
    this.removeId = instance.id;
    if (<any>this.$refs.removeEntity) {
      (<any>this.$refs.removeEntity).show();
    }
  }

  public removeRequestAssignment(): void {
    if (!this.removeId) {
      return;
    }
    requestAssignmentService
      .deleteRequestAssignment(this.removeId)
      .then(() => {
        const message = 'A RequestAssignment is deleted with identifier ' + this.removeId;
        alert(message);
        this.retrieveAllRequestAssignments();
        this.closeDialog();
      });
  }

  public closeDialog(): void {
    (<any>this.$refs.removeEntity).hide();
  }
}

</script>
