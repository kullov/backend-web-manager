<template src="./InternPageDetail.html"></template>
<style lang="scss" scoped src="./InternPageDetail.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { InternModel } from '@/models/InternModel';
import { internService } from '@/services/intern.service';
import { abilityService } from '@/services';

@Component
export default class InternPageDetail extends Vue{
  private isLoading: boolean = false;
  private intern: InternModel = new InternModel();
  private listAbilities: any[] = [];
  // beforeRouteEnter(to: any, from: any, next: any) {
  //   next((vm: any) => {
  //     if (to.params.internId) {
  //       vm.retrieveIntern(to.params.internId);
  //     }
  //   });
  // }

  private mounted() {
    this.getAllAbilities();
    this.retrieveIntern(1);
  }

  public retrieveIntern(internId: any) {
    this.isLoading = true;
    internService
      .getIntern(internId)
      .then((res: any) => {
        debugger;
        this.intern = res.data;
      })
      .catch(() => {
        alert("Lỗi!");
      })
      .finally(() => this.isLoading = false);
  }

  public previousState() {
    this.$router.go(-1);
  }

  private getAllAbilities() {
    abilityService.getAllAbilities().then((res: any) => {
      this.listAbilities = res.data;
    })
  }

  private updateIntern() {
    this.isLoading = true;
    internService.updateIntern(this.intern).then((res:any) => {
      alert("Update thành công!");
    }).catch(() => {
      alert("Loi!");
    }).finally(() => this.isLoading = false);
  }

  public getSelected(selectedVals: any, option: any): any {
    if (selectedVals) {
      for (let i = 0; i < selectedVals.length; i++) {
        if (option.id === selectedVals[i].id) {
          return selectedVals[i];
        }
      }
    }
    return option;
  }
}
</script>