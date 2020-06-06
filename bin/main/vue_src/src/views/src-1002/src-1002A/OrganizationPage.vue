<template src="./OrganizationPage.html"></template>
<style lang="scss" scoped src="./OrganizationPage.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class OrganizationPage extends Vue {
  private isLoading: boolean = false;
  private listRequests: any[] = [
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
    {'position': 'Java', 'name': 'NWS', 'amount': 5, 'assignment': 2, 'address': 'Hanoi', 'status': 1},
  ];

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
}
</script>