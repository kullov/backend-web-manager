<template src="./InputIntern.html"></template>
<style lang="scss" scoped src="./InputIntern.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { InternModel } from '@/models/InternModel';
import { internService } from '@/services/intern.service';
import { abilityService } from '@/services';
import { RegisterModel } from '../../../models/RegisterModel';
import Register from '@/views/register/Register.vue';

@Component({
  components: {
    Register,
  }
})
export default class InputIntern extends Vue{
  private isLoading: boolean = false;
  private intern: InternModel = new InternModel();
  private listAbilities: any[] = [];
  private listRegisterRequest: RegisterModel[] = [];

  private mounted() {
    this.getAllAbilities();
    let idCurrentUser = localStorage.getItem('idCurrentUser');
    this.retrieveIntern(this.$route.params.internId);
  }

  public retrieveIntern(internId: any) {
    this.isLoading = true;
    internService
      .getIntern(internId)
      .then((res: any) => {
        this.intern = res.data;
        if (res.data.registerRequests) {
          this.listRegisterRequest = res.data.registerRequests;
        }
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
      localStorage.setItem('currentUserName', this.intern.firstName + ' ' + this.intern.lastName);
      localStorage.setItem('avatar', this.intern.avatar ? this.intern.avatar : '');
      this.$router.push('/about');
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