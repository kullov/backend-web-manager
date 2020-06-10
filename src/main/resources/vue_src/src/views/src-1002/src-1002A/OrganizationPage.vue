<template src="./OrganizationPage.html"></template>
<style lang="scss" scoped src="./OrganizationPage.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { requestService } from '../../../services/request.service';
import { RequestModel } from '../../../models';
import DetailRequest from "@/views/request/detail/DetailRequest.vue";
import { organizationService } from '../../../services/organization.service';

@Component({
  components: {
    DetailRequest
  }
})
export default class OrganizationPage extends Vue {
  private isLoading: boolean = false;
  private organizationId: any = '';
  private listRequests: RequestModel[] = [];
  private isDetailRequestVisible: boolean = false;
  private idProp: any;

  private listAssignments: any[] = [];

  private created() {
    this.organizationId = localStorage.getItem('idCurrentUser');
    this.getOrganization(this.organizationId);
  }

  private getOrganization(id: any) {
    organizationService.getOrganization(id)
    .then((res: any) => {
      this.listRequests = res.data.requests;
      this.listRequests.forEach((item: any) => {
        item.registerRequests.forEach((element: any) => {
          if (element.registerRequestStatus.id === 1) {
            this.listAssignments.push(element);
          }
        });
      });
    });
  }

  private openDetailRequest(item: any) {
    if (item) {
      this.isDetailRequestVisible = true;
      this.idProp = item.id;
    }
  }

  private finishScreen() {
    this.isDetailRequestVisible = false;
  }
}
</script>