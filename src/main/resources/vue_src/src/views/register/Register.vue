<template src="./Register.html"></template>
<style lang="scss" scoped src="./Register.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { registerService } from '../../services/register.service';
import { RegisterModel } from '../../models/RegisterModel';
import InputRegister from './input-register/InputRegister.vue';
import { requestAssignmentService } from '../../services/requestAssignment.service';
import { RequestAssignmentModel } from '../../models/RequestAssignmentModel';
import { statusService } from '../../services/status.service';
import { StatusModel } from '../../models/StatusModel';

@Component({
  components: {
    InputRegister,
  }
})
export default class Register extends Vue {
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId?: number;
  private isInputRegisterVisible: boolean = false;
  private statusActive: StatusModel = new StatusModel();
  private title: string = 'Tạo mới đăng ký thực tập';

  public registerRequests: RegisterModel[] = [];
  public editModel: RegisterModel = new RegisterModel();

  public isFetching: boolean = false;

  public mounted(): void {
    this.retrieveAllRegisterRequests();
    this.getStatusActive();
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
      .deleteRegister(this.removeId ? this.removeId + '' : '')
      .then(() => {
        const message = 'Đã xóa thành công phiếu đăng ký ' + this.removeId;
        this.removeId = undefined;
        this.retrieveAllRegisterRequests();
        this.closeDialog();
      });
  }

  private openDialogEdit(item: any) {
    this.isInputRegisterVisible = true;
    this.editModel = item;
  }

  private finishScreen() {
    this.isInputRegisterVisible = false;
  }

  public closeDialog(): void {
    (<any>this.$refs.removeEntity).hide();
  }

  private getStatusActive() {
    statusService
      .getStatus(1)
      .then((res: any) => {
        this.statusActive = res.data;
      });
  }
}
</script>