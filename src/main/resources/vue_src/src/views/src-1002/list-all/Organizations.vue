<template src="./Organizations.html"></template>
<style lang="scss" scoped src="./Organizations.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { organizationService } from '../../../services/organization.service';
import { OrganizationModel } from '../../../models/OrganizationModel';

@Component
export default class Organizations extends Vue{
  private isLoading: boolean = false;
  private organizations: OrganizationModel = new OrganizationModel();
  private created() {
    this.getAllOrganizations();
  }

  private getAllOrganizations() {
    this.isLoading = true;
    organizationService.getAllOrganizations().then((res: any) => {
      this.organizations = res.data;
    })
    .finally(() => this.isLoading = false);
  }
}
</script>