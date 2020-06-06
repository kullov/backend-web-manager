<template src="./OrganizationPage.html"></template>
<style lang="scss" scoped src="./OrganizationPage.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { requestService } from '../../../services/request.service';
import { RequestModel } from '../../../models';
import DetailRequest from "@/views/request/detail/DetailRequest.vue";

@Component({
  components: {
    DetailRequest
  }
})
export default class OrganizationPage extends Vue {
  private isLoading: boolean = false;
  private organizationId: number = 1;
  private listRequests: RequestModel[] = [];
  private isDetailRequestVisible: boolean = false;
  private idProp: any;

  private listAssignments: any[] = [
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
    {'id': '1', 'code': '16001231', 'name': 'ABCDE', 'startDate': '2019-11-08', 'endDate': '2019-12-19', 'position': 'Java', 'status': 1, 'dateCreated': '2019-11-22'},
  ];

  private created() {
    this.getAllRequestByOrganizationId(this.organizationId);
  }

  private getAllRequestByOrganizationId(id: any) {
    requestService
      .getAllRequestsByOrganization(id)
      .then((res: any) => {
        this.listRequests = res.data;
      })
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