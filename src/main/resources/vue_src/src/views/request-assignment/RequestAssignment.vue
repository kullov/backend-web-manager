<template src="./RequestAssignment.html"></template>
<style lang="scss" scoped src="./RequestAssignment.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { registerService } from '../../services/register.service';
import { RegisterModel } from '../../models/RegisterModel';
import InputRegister from '../register/input-register/InputRegister.vue';
import { requestAssignmentService } from '../../services/requestAssignment.service';
import { RequestAssignmentModel } from '../../models/RequestAssignmentModel';
import { StatusModel } from '../../models/StatusModel';
import { statusService } from '../../services/status.service';

@Component({
  components: {
    InputRegister,
  }
})
export default class RequestAssignment extends Vue {
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId?: number;
  private isInputRegisterVisible: boolean = false;
  private statusActive: StatusModel = new StatusModel();
  private title: string = 'Tạo mới đăng ký thực tập';

  public registerRequests: RegisterModel[] = [];

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

  private assign(item: RegisterModel) {
    item.registerRequestStatus = this.statusActive;
    registerService
      .updateRegister(item)
      .then((param: any) => {
          const message = 'Đã phân công thành công phiếu đăng ký ' + item.id;
          alert(message);
          this.retrieveAllRegisterRequests();
      });
  }

  private getStatusActive() {
    statusService
      .getStatus(1)
      .then((res: any) => {
        this.statusActive = res.data;
      });
  }

  public closeDialog(): void {
    (<any>this.$refs.removeEntity).hide();
  }
}
</script>