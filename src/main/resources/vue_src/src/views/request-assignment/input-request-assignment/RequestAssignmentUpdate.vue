<template src="./RequestAssignmentUpdate.html"></template>
<style lang="scss" scoped src="./RequestAssignmentUpdate.scss"></style>
<script lang="ts">
import { Component, Vue, Inject } from 'vue-property-decorator';

import { numeric, required, minLength, maxLength, minValue, maxValue } from 'vuelidate/lib/validators';
import { format, parse, parseISO } from 'date-fns';
import { DATE_TIME_LONG_FORMAT } from '@/components/shared/date/filters';

import {internService} from '@/services/intern.service';
import { InternModel } from '@/models/InternModel';

import { organizationService } from '@/services/organization.service';
import { OrganizationModel } from '@/models/OrganizationModel';

import {statusService} from '@/services/status.service';
import { StatusModel } from '@/models/StatusModel';

import { RequestAssignmentModel } from '@/models/RequestAssignmentModel';
import {requestAssignmentService} from '@/services/requestAssignment.service';

const validations: any = {
  requestAssignment: {
    startDate: {},
    endDate: {},
    dateCreated: {}
  }
};

@Component({
  // validations
})
export default class RequestAssignmentUpdate extends Vue {
  public requestAssignment: RequestAssignmentModel = new RequestAssignmentModel();
  public interns: InternModel[] = [];
  public organizations: OrganizationModel[] = [];
  public statuses: StatusModel[] = [];
  public isSaving = false;

  created() {
    if (this.$route.params.requestAssignmentId) {
      this.retrieveRequestAssignment(this.$route.params.requestAssignmentId);
    }
    this.initRelationships();
  }

  public save() {
    this.isSaving = true;
    if (this.requestAssignment.id) {
      requestAssignmentService
        .updateRequestAssignment(this.requestAssignment)
        .then((param: any) => {
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A RequestAssignment is updated with identifier ' + param.id;
          alert(message);
        });
    } else {
      requestAssignmentService
        .createRequestAssignment(this.requestAssignment)
        .then((param: any) => {
          debugger;
          this.isSaving = false;
          this.$router.go(-1);
          const message = 'A RequestAssignment is created with identifier ' + param.id;
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

  public updateInstantField(field: any, event: any) {
    if (event.target.value) {
      switch (field) {
        case 'startDate': 
          this.requestAssignment.startDate = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
          break;
        case 'endDate': 
          this.requestAssignment.endDate = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
          break;
        case 'dateCreated': 
          this.requestAssignment.dateCreated = parse(event.target.value, DATE_TIME_LONG_FORMAT, new Date());
          break;
      }
    } 
  }

  public retrieveRequestAssignment(requestAssignmentId: any) {
    requestAssignmentService
      .getRequestAssignment(requestAssignmentId)
      .then((res: any) => {
        debugger;
        res.data.startDate = new Date(res.data.startDate);
        res.data.endDate = new Date(res.data.endDate);
        res.data.dateCreated = new Date(res.data.dateCreated);
        this.requestAssignment = res.data;
      });
  }

  public previousState() {
    this.$router.go(-1);
  }

  public initRelationships() {
    internService
      .getAllInterns()
      .then(res => {
        this.interns = res.data;
      });
    organizationService
      .getAllOrganizations()
      .then(res => {
        this.organizations = res.data;
      });
    statusService
      .getAllStatuss()
      .then(res => {
        this.statuses = res.data;
      });
  }

}
</script>

