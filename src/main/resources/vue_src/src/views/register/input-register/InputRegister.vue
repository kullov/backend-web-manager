<template src="./InputRegister.html"></template>
<style lang="scss" scoped src="./InputRegister.scss"></style>
<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator';
import { registerRequestService } from '@/services/registerRequest.service';
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
  @Prop() requestModel!: RequestModel;
  @Prop() registerModel?: RegisterModel;
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId: any;
  private internId?: any;

  public registerRequest: RegisterModel = new RegisterModel();
  public statuses: StatusModel[] = [];

  public interns: InternModel[] = [];

  public requests: RequestModel[] = [];
  public isSaving = false;

  private isDisabledStatus: boolean = false;

  private typeUser: any;

  beforeRouteEnter(to: any, from: any, next: any) {
    next((vm: any) => {
      if (to.params.registerRequestId) {
        vm.retrieveRegisterRequest(to.params.registerRequestId);
      }
      vm.initRelationships();
    });
  }

  private created() {
    this.typeUser = localStorage.getItem('typeUser') || '';
    if (this.typeUser === '1') {
      this.internId = localStorage.getItem('idCurrentUser');
    }
    this.initRelationships();
  }

  public save(): void {
    this.isSaving = true;
    let model = this.registerRequest;
    model.dateCreated = this.$moment(this.registerRequest.dateCreated, 'DD/MM/YYYY').unix();
    model.startDate = this.$moment(this.registerRequest.startDate, 'DD/MM/YYYY').unix();
    model.endDate = this.$moment(this.registerRequest.endDate, 'DD/MM/YYYY').unix();
    
    if (this.registerRequest.id) {
      registerRequestService
        .updateRegister(model)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'Sửa thành công phiếu đăng ký thực tập ' + this.registerRequest.id;
          alert(message);
          this.closeDialog();
        });
    } else {
      registerRequestService
        .createRegister(model)
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
    registerRequestService
      .getRegister(registerRequestId)
      .then((res: any) => {
        this.registerRequest = res.data;
        this.registerRequest.dateCreated = this.$moment.unix(res.data.dateCreated).format("MM/DD/YYYY");
        this.registerRequest.startDate = this.$moment.unix(res.data.startDate).format("MM/DD/YYYY");
        this.registerRequest.endDate = this.$moment.unix(res.data.endDate).format("MM/DD/YYYY");
      });
  }

  public closeDialog(): void {
    this.$emit('close');
  }

  public async initRelationships() {
    await internService
      .getAllInterns()
      .then((res: any) => {
        this.interns = res.data;
      });
    await requestService
      .getAllRequests()
      .then((res: any) => {
        this.requests = res.data;
      });

    if (this.internId) {
      await internService
      .getIntern(this.internId)
      .then((res: any) => {
        this.registerRequest.internRegister = res.data;
      });
    }

    await statusService
      .getAllStatuss()
      .then(res => {
        this.statuses = res.data;
      });

    if (this.registerModel) {
      this.isDisabledStatus = false;
      this.retrieveRegisterRequest(this.registerModel.id);
    } else {
      this.registerRequest.registerRequestStatus = this.statuses[2];
      this.isDisabledStatus = true;
    }
    if (this.requestModel) {
    this.registerRequest.requestRegister = this.requestModel;
    }
    if (this.registerModel) {
      this.registerRequest = this.registerModel;
    }
  }
}
</script>