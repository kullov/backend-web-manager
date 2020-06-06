<template src="./InputRegister.html"></template>
<style lang="scss" scoped src="./InputRegister.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator';
import { registerService } from '@/services/register.service';
import { RegisterModel } from '@/models/RegisterModel';
import { InternModel } from '@/models/InternModel';
import { RequestModel } from '@/models';
import { format, parse, parseISO } from 'date-fns';
import { DATE_TIME_LONG_FORMAT } from '@/components/shared/date/filters';
import { requestService } from '@/services/request.service';
import { internService } from '@/services/intern.service';
import { StatusModel } from '../../../models/StatusModel';
import { statusService } from '../../../services/status.service';

const validations: any = {
  registerRequest: {
    dateCreated: {},
    startDate: {},
    endDate: {}
  }
};

@Component({
  components: {
    validations
  }
})
export default class InputRegister extends Vue {
  @Prop() internId?: any;
  @Prop() requestModel!: RequestModel;
  @Prop() registerModel?: RegisterModel;
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId: any;

  public registerRequest: RegisterModel = new RegisterModel();
  public statuses: StatusModel[] = [];

  public interns: InternModel[] = [];

  public requests: RequestModel[] = [];
  public isSaving = false;

  beforeRouteEnter(to: any, from: any, next: any) {
    next((vm: any) => {
      if (to.params.registerRequestId) {
        vm.retrieveRegisterRequest(to.params.registerRequestId);
      }
      vm.initRelationships();
    });
  }

  private created() {
    if (this.$route.params.registerRequestId) {
      this.retrieveRegisterRequest(this.$route.params.registerRequestId);
    }
    this.initRelationships();
    if (this.requestModel) {
    this.registerRequest.requestRegister = this.requestModel;
    }
    if (this.registerModel) {
      this.registerRequest = this.registerModel;
    }
  }

  public save(): void {
    this.isSaving = true;
    if (this.registerRequest.id) {
      registerService
        .updateRegister(this.registerRequest)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'Sửa thành công phiếu đăng ký thực tập ' + this.registerRequest.id;
          alert(message);
          this.closeDialog();
        });
    } else {
      registerService
        .createRegister(this.registerRequest)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'Tạo thành công phiếu đăng ký thực tập ' + this.registerRequest.id;
          alert(message);
          this.closeDialog();
        });
    }
  }

  public convertDateTimeFromServer(date: Date) {
    if (date) {
      return format(date, DATE_TIME_LONG_FORMAT);
    }
    return null;
  }

  public retrieveRegisterRequest(registerRequestId: any) {
    registerService
      .getRegister(registerRequestId)
      .then((res: any) => {
        res.dateCreated = new Date(res.dateCreated);
        res.startDate = new Date(res.startDate);
        res.endDate = new Date(res.endDate);
        this.registerRequest = res;
      });
  }

  public closeDialog(): void {
    this.$emit('close');
  }

  public initRelationships(): void {
    internService
      .getAllInterns()
      .then((res: any) => {
        this.interns = res.data;
      });
    requestService
      .getAllRequests()
      .then((res: any) => {
        this.requests = res.data;
      });

    if (this.internId) {
      internService
      .getIntern(this.internId)
      .then((res: any) => {
        this.registerRequest.internRegister = res.data;
      });
    }

    statusService
      .getAllStatuss()
      .then(res => {
        this.statuses = res.data;
      });
    // requestService
    //   .getRequest(this.requestId)
    //   .then((res: any) => {
    //     this.registerRequest.requestRegister = res.data;
    //   });
  }
}
</script>