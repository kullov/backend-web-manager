<template src="./Register.html"></template>
<style lang="scss" scoped src="./Register.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator';
import { registerRequestService } from '../../services/registerRequest.service';
import { RegisterModel } from '../../models/RegisterModel';
import InputRegister from './input-register/InputRegister.vue';
import { requestAssignmentService } from '../../services/requestAssignment.service';
import { RequestAssignmentModel } from '../../models/RequestAssignmentModel';
import { statusService } from '../../services/status.service';
import { StatusModel } from '../../models/StatusModel';
import { internService } from '../../services/intern.service';

@Component({
  components: {
    InputRegister,
  }
})
export default class Register extends Vue {
  @Prop() listRegister?: any;
  private isLoading: boolean = false;
  private removeId?: number;
  private isInputRegisterVisible: boolean = false;
  private statusActive: StatusModel = new StatusModel();
  private title: string = 'Tạo mới đăng ký thực tập';

  public listRegisterRequest: RegisterModel[] = [];
  public registerRequests: RegisterModel[] = [];
  public editModel: RegisterModel = new RegisterModel();

  public isFetching: boolean = false;
  private idCurrentUser: string = '';
  private typeUser: string = '';
  
  private created() {
    this.typeUser = localStorage.getItem('typeUser') || '';
    this.idCurrentUser = localStorage.getItem('idCurrentUser') || '';
    if (this.typeUser === '1' && this.idCurrentUser) {
      this.retrieveRegisterRequestByIntern(this.idCurrentUser);
    } else if (this.listRegister) {
      this.registerRequests = this.listRegister;
    } else {
      this.retrieveAllRegisterRequests();
      this.getStatusActive();
    }

  }

  public retrieveRegisterRequestByIntern(internId: any) {
    this.isLoading = true;
    internService
      .getIntern(internId)
      .then((res: any) => {
        if (res.data.registerRequests) {
          this.registerRequests = res.data.registerRequests;
        }
      })
      .catch(() => {
        alert("Lỗi!");
      })
      .finally(() => this.isLoading = false);
  }

  public clear(): void {
    this.retrieveAllRegisterRequests();
  }

  public retrieveAllRegisterRequests(): void {
    this.isFetching = true;
    registerRequestService
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
    registerRequestService
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