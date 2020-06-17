<template src="./User.html"></template>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { teacherService } from '../../services/teacher.service';
import { organizationService } from '../../services/organization.service';

@Component
export default class User extends Vue{
  private isLoading: boolean = false;
  private model: any = {};
  private listAbilities: any[] = [];
  private typeUser: any;
  // beforeRouteEnter(to: any, from: any, next: any) {
  //   next((vm: any) => {
  //     if (to.params.modelId) {
  //       vm.retrievemodel(to.params.modelId);
  //     }
  //   });
  // }

  private mounted() {
    this.typeUser = localStorage.getItem('typeUser') || '';
  }

  public previousState() {
    this.$router.go(-1);
  }

  private update() {
    this.isLoading = true;
    this.model.id = localStorage.getItem('idCurrentUser');
    if (this.typeUser === '3') {
      teacherService.updateTeacher(this.model).then((res:any) => {
        alert("Update thành công!");
        localStorage.setItem('currentUserName', this.model.name);
        this.$router.push({ path: '/about' });
        localStorage.setItem('avatar', this.model.avatar);
      }).catch(() => {
        alert("Loi!");
      }).finally(() => this.isLoading = false);
    } else {
      organizationService.updateOrganization(this.model).then((res:any) => {
        alert("Update thành công!");
        localStorage.setItem('currentUserName', this.model.name);
        localStorage.setItem('avatar', this.model.avatar);
        this.$router.push({ path: '/about' });
      }).catch(() => {
        alert("Loi!");
      }).finally(() => this.isLoading = false);
    }
  }

}
</script>