<template src="./DetailRequest.html"></template>
<style lang="scss" scoped src="./DetailRequest.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator';
import { requestService } from '@/services/request.service';
import { RequestModel } from '@/models';
import { RegisterModel } from '@/models/RegisterModel';
import { registerRequestService } from '@/services/registerRequest.service';
import { internService } from '@/services/intern.service';
import { organizationService } from '@/services/organization.service';
import { statusService } from '@/services/status.service';
import { InternModel } from '@/models/InternModel';
import { OrganizationModel } from '@/models/OrganizationModel';
import InputRegister from '@/views/register/input-register/InputRegister.vue';
import Register from '@/views/register/Register.vue';

@Component({
  components: {
    InputRegister,
    Register
  }
})
export default class DetailRequest extends Vue{
  @Prop() id!: any;
  private isLoading: boolean = false;
  private requestModel: RequestModel = new RequestModel();
  private isRegisterRequestVisible: boolean = false;
  private isViewInternRegisterVisible: boolean = false;
  private formRegister: RegisterModel = new RegisterModel();
  private internId: string = '1';
  private typeUser: any = '';
  private countAssigned: number = 0;
  private listRegister: any = [];

  private created() {
    this.getDetailRequest();
    this.internId = '1';
    this.typeUser = localStorage.getItem('typeUser');
  }

  private getDetailRequest() {
    if (this.id) {
      this.isLoading = true;
      requestService
        .getRequest(this.id)
        .then((res: any) => {
          this.requestModel = new RequestModel(res.data);
          if (this.requestModel.registerRequests) {
            this.listRegister = res.data.registerRequests;
            this.requestModel.registerRequests.forEach(element => {
            if (element.registerRequestStatus.id === 1) {
              this.countAssigned++;
            }
          });
          }
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

  private openRegisterRequest() {
    this.isRegisterRequestVisible = true;
    this.initRelationships();
  }

  private finishScreen() {
    this.isRegisterRequestVisible = false;
  }

  public initRelationships() {
    internService
      .getIntern(2)
      .then((res: any) => {
        this.formRegister.internRegister = res.data;
      });
    requestService
      .getRequest(this.requestModel.id)
      .then((res: any) => {
        this.formRegister.requestRegister = res.data;
      });
  }

  private registerSubmit() {
    console.log(this.formRegister);
    registerRequestService
      .createRegister(this.formRegister)
      .then((res: any) => {
        alert('Đăng ký thành công!');
      })
      .catch(() => {
        alert('Đăng ký thất bại!');
      })
      .finally(() => {
        this.isRegisterRequestVisible = false;
      }); 

    // let startDate = this.$moment()
  }

  private finishScreenInternRegister() {
    this.isViewInternRegisterVisible = false;
  }

}
</script>