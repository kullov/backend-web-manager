<template src="./DetailRequest.html"></template>
<style lang="scss" scoped src="./DetailRequest.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator';
import { requestService } from '../../../services/request.service';
import { RequestModel } from '../../../models';

@Component
export default class DetailRequest extends Vue{
  private isLoading: boolean = false;
  private requestModel: RequestModel = new RequestModel();
  @Prop() id!: any;

  private created() {
    this.getDetailRequest();
  }

  private getDetailRequest() {
    if (this.id) {
      this.isLoading = true;
      requestService
        .getRequest(this.id)
        .then((res: any) => {
          debugger;
          this.requestModel = res.data;
        })
        .catch(() => {
          alert("Error!");
        })
        .finally(() => this.isLoading = false);
    }
  }
  private closeWindow() {
    this.$emit('close');
  }

}
</script>