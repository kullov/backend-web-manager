<template src="./InputRequest.html"></template>
<style lang="scss" scoped src="./InputRequest.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { RequestModel, AbilityModel } from "@/models";
import { DATE_TIME_LONG_FORMAT } from '@/components/shared/date/filters';
import { format, parse, parseISO } from 'date-fns';
import { abilityService } from '@/services';
import { requestService } from '@/services/request.service';
import { StatusModel } from '@/models/StatusModel';
import { registerRequestService } from '@/services/registerRequest.service';
import { RegisterModel } from '@/models/RegisterModel';
import { OrganizationModel } from '@/models/OrganizationModel';
import { organizationService } from '@/services/organization.service';
import { statusService } from '@/services/status.service';

@Component
export default class InputRequest extends Vue {
  private rules: any = null;
  private createForm: RequestModel = new RequestModel();
  private isLoading = false;

  private noError: string = "";
  private required: string = "";
  private textarea: string = "";
  private hasMessages: boolean = false;
  private isDisabledTimeWork: boolean = true;
  private listAbilities: any = [];
  public request: RequestModel = new RequestModel();
  public registerRequests: RegisterModel[] = [];
  public abilities: AbilityModel[] = [];
  public organizations: OrganizationModel[] = [];
  public organizationModel: OrganizationModel = new OrganizationModel();

  private created() {
    this.clearError();
    this.getListAbilities();
    this.request.requestAbilities = [];
  }

  private mounted() {
    this.rules = {
      name: [
        {
          required: true,
          message: "Please input Activity name",
          trigger: "change"
        },
        { min: 3, max: 100, message: "Length should be 3 to 100", trigger: "blur" }
      ],
      amount: [
        {
          required: true,
          message: "Vui Lòng nhập số lượng cần tuyển",
          trigger: "change"
        }
      ],
      position: [
        {
          required: true,
          message: "Vui lòng nhập vị trí cần tuyển",
          trigger: "change"
        }
      ],
      status: [
        {
          required: true,
          message: "Vui lòng chọn trạng thái phiếu",
          trigger: "change"
        }
      ],
      type: [
        {
          required: true,
          message: "Vui lòng chọn hình thức làm việc",
          trigger: "change"
        }
      ],
      // time: [
      //   {
      //     required: true,
      //     message: "Vui lòng chọn ca làm việc",
      //     trigger: "submit"
      //   }
      // ],
      required: [
        {
          required: true,
          message: "Vui lòng chọn các kỹ năng yêu cầu",
          trigger: "change"
        }
      ]
    };
    if (this.$route.params.requestId) {
      this.retrieveRequest(this.$route.params.requestId);
    }
    this.initRelationships();
  }

  private getListAbilities() {
    this.isLoading = true;
    abilityService
      .getAllAbilities()
      .then((res: any) => {
        this.listAbilities = res.data;
      })
      .catch(err => {
        alert('Có lỗi!');
      })
      .finally(() => this.isLoading = false);
  }

  private submit() {
    (this.$refs['ruleForm'] as any).validate((valid: boolean, errors: any) => {
      if (valid) {
        this.createForm.organizationRequest = this.organizationModel;
        console.log(this.createForm);
        requestService.createRequest(this.createForm)
          .then(res => {
            alert('Tạo thành công!');
            this.$router.go(-1);
          })
          .catch(() => alert('Tạo thất bại!'));
      }
    });
  }

  private isDisabledTimeWorkFunc() {
    if (this.createForm.type === 'fulltime') {
      this.isDisabledTimeWork = true;
    } else {
      this.isDisabledTimeWork = false;
    }
  }

  private clearError() {
    if ((this.$refs['ruleForm'] as any)) {
      (this.$refs['ruleForm'] as any).clearValidate();
    }
  }

  public statuses: StatusModel[] = [];
  public isSaving = false;

  beforeRouteEnter(to: any, from: any, next: any) {
    next((vm: any) => {
      if (to.params.requestId) {
        vm.retrieveRequest(to.params.requestId);
      }
      vm.initRelationships();
    });
  }

  public save(): void {
    this.isSaving = true;
    if (this.request.id) {
      requestService
        .updateRequest(this.request)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A Request is updated with identifier ' + param.id;
          alert(message);
        });
    } else {
      requestService
        .createRequest(this.request)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A Request is created with identifier ' + param.id;
          alert(message);       
        });
    }
  }

  public convertDateTimeFromServer(date: Date) {
    if (date) {
      return format(date, DATE_TIME_LONG_FORMAT);
    }
    return null;
  }

  public updateInstantField(field: string, event: any) {
    this.request.dateCreated = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
  }

  public updateZonedDateTimeField(field: any, event: any) {
      this.request.dateCreated = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
  }

  public retrieveRequest(requestId: any): void {
    requestService
      .getRequest(requestId)
      .then((res: any) => {
        res.dateCreated = new Date(res.dateCreated);
        this.request = res;
      });
  }

  public previousState(): void {
    this.$router.go(-1);
  }

  public initRelationships(): void {
    // registerRequestService
    //   .getAllRegisters()
    //   .then(res => {
    //     this.registerRequests = res.data;
    //   });
    abilityService
      .getAllAbilities()
      .then(res => {
        this.abilities = res.data;
      });
    // organizationService
    //   .getAllOrganizations()
    //   .then(res => {
    //     this.organizations = res.data;
    //   });
    organizationService
      .getOrganization('1')
      .then((res: any) => {
        this.organizationModel = res.data;
      });
    statusService
      .getAllStatuss()
      .then(res => {
        this.statuses = res.data;
      });
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