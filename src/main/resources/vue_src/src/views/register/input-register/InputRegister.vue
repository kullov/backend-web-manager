<template src="./InputRegister.html"></template>
<style lang="scss" scoped src="./InputRegister.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { registerService } from '@/services/register.service';
import { RegisterModel } from '@/models/RegisterModel';
import { InternModel } from '../../../models/InternModel';
import { RequestModel } from '../../../models';
import { DATE_TIME_LONG_FORMAT } from '@/components/shared/date/filters';
import format from 'date-fns/format';
import parse from 'date-fns/parse';
import parseISO from 'date-fns/parseISO';
import { requestService } from '../../../services/request.service';
import { internService } from '../../../services/intern.service';

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
  private listRegister: any[] = [];
  private isLoading: boolean = false;
  private removeId: any;

  public registerRequest: RegisterModel = new RegisterModel();


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

  public save(): void {
    this.isSaving = true;
    if (this.registerRequest.id) {
      registerService
        .updateRegister(this.registerRequest)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A RegisterRequest is updated with identifier ' + param.id;
          alert(message + 'success');
        });
    } else {
      registerService
        .createRegister(this.registerRequest)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A RegisterRequest is created with identifier ' + param.id;
          alert(message + 'success');
        });
    }
  }

  public convertDateTimeFromServer(date: Date) {
    if (date) {
      return format(date, DATE_TIME_LONG_FORMAT);
    }
    return null;
  }

  public updateInstantField(field: any, event: any) {
    if (event.target.value) {
      this.registerRequest[field] = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
    } else {
      this.registerRequest[field] = null;
    }
  }

  public updateZonedDateTimeField(field: any, event: any) {
    if (event.target.value) {
      this.registerRequest[field] = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
    } else {
      this.registerRequest[field] = null;
    }
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

  public previousState(): void {
    this.$router.go(-1);
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
  }
}
</script>