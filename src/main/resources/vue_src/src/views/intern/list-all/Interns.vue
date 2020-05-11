<template src="./Interns.html"></template>
<style lang="scss" scoped src="./Interns.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { internService } from '../../../services/intern.service';
import { InternModel } from '../../../models/InternModel';

@Component
export default class Interns extends Vue{
  private isLoading: boolean = false;
  private interns: InternModel = new InternModel();
  private created() {
    this.getAllInterns();
  }

  private getAllInterns() {
    this.isLoading = true;
    internService.getAllInterns().then((res: any) => {
      this.interns = res.data;
    })
    .finally(() => this.isLoading = false);
  }
}
</script>