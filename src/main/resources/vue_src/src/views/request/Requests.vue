<template src="./Requests.html"></template>
<style lang="scss" scoped src="./Requests.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { requestService } from '../../services/request.service';
import DetailRequest from './detail/DetailRequest.vue';
import { RequestModel } from '../../models';

@Component({
  components: {
    DetailRequest,
  }
})
export default class Requests extends Vue {
  private listRequests: RequestModel[] = [];
  private isLoading: boolean = false;
  private isDetailRequestVisible: boolean = false;
  private idProp: any;
  private searchText: string = '';
  
  private created() {
    this.getAllRequests();
  }

  private search() {
    if (this.searchText) {
      requestService
      .getAllRequestsByPosition(this.searchText)
      .then((res: any) => {
        this.listRequests = [];
        res.data.forEach((element: any) => {
          this.listRequests.push(new RequestModel(element));
        });;
      })
      .catch(() => {
        alert("Xảy ra lỗi!");
      })
      .finally(() => this.isLoading = false);
    } else {
      this.listRequests = [];
      this.getAllRequests();
    }
  }

  private getAllRequests() {
    this.isLoading = true;
    requestService
      .getAllRequests()
      .then((res: any) => {
        res.data.forEach((element: any) => {
          this.listRequests.push(new RequestModel(element));
        });;
      })
      .catch(() => {
        alert("Xảy ra lỗi!");
      })
      .finally(() => this.isLoading = false);
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