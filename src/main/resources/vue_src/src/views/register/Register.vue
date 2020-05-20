<template src="./Register.html"></template>
<style lang="scss" scoped src="./Register.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { registerService } from '../../services/register.service';
import { RegisterModel } from '../../models/RegisterModel';
import InputRegister from './input-register/InputRegister.vue';

@Component({
  components: {
    InputRegister,
  }
})
export default class Register extends Vue {
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId: any;

  private title: string = 'Tạo mới đăng ký thực tập';

  public registerRequests: RegisterModel[] = [];

  public isFetching = false;

  public mounted(): void {
    this.retrieveAllRegisterRequests();
  }

  public clear(): void {
    this.retrieveAllRegisterRequests();
  }

  public retrieveAllRegisterRequests(): void {
    this.isFetching = true;
    registerService
      .getAllRegisters()
      .then(
        res => {
          this.registerRequests = res.data;
          this.isFetching = false;
        },
        err => {
          this.isFetching = false;
        }
      );
  }

  public prepareRemove(instance: RegisterModel): void {
    this.removeId = instance.id;
    if (<any>this.$refs.removeEntity) {
      (<any>this.$refs.removeEntity).show();
    }
  }

  public removeRegisterRequest(): void {
    registerService
      .deleteRegister(this.removeId)
      .then(() => {
        const message = 'A RegisterRequest is deleted with identifier ' + this.removeId;
        this.removeId = null;
        this.retrieveAllRegisterRequests();
        this.closeDialog();
      });
  }

  public closeDialog(): void {
    (<any>this.$refs.removeEntity).hide();
  }
}
</script>