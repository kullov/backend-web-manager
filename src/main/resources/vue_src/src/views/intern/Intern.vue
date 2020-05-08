<template src="./Intern.html"></template>
<style lang="scss" scoped src="./Intern.scss"></style>
<script lang="ts">
import { mixins } from 'vue-class-component';

import { Vue, Component, Inject } from 'vue-property-decorator';
import Vue2Filters from 'vue2-filters';
import { InternModel } from '@/models/InternModel';
// import AlertMixin from '@/shared/alert/alert.mixin';

import { internService } from '@/services/intern.service';

@Component
export default class Intern extends Vue {
  private removeId?: number;

  public interns: InternModel[] = [];

  public isFetching = false;

  public mounted(): void {
    this.retrieveAllInterns();
  }

  public clear(): void {
    this.retrieveAllInterns();
  }

  public retrieveAllInterns(): void {
    this.isFetching = true;

    internService
      .getAllInterns()
      .then(
        res => {
          this.interns = res.data;
          this.isFetching = false;
        },
        err => {
          this.isFetching = false;
        }
      );
  }

  public prepareRemove(instance: InternModel): void {
    this.removeId = instance.id;
    if (<any>this.$refs.removeEntity) {
      (<any>this.$refs.removeEntity).show();
    }
  }

  public removeIntern(): void {
    if (this.removeId) {
      internService
        .deleteIntern(this.removeId)
        .then(() => {
          const message = 'A Intern is deleted with identifier ' + this.removeId;
          this.removeId = 0;
          this.retrieveAllInterns();
          this.closeDialog();
        });
    }
  }

  public closeDialog(): void {
    (<any>this.$refs.removeEntity).hide();
  }
}

</script>