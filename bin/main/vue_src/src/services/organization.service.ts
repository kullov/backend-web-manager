import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { OrganizationModel } from '@/models/OrganizationModel';
const ROOT_API = 'http://localhost:8888/api/organizations/';  // Root api
class OrganizationService extends Vue {

  public getAllOrganizations(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createOrganization(entity: OrganizationModel): AxiosPromise<OrganizationModel> {
    return Vue.axios.post<OrganizationModel>(ROOT_API, entity);
  }

  public updateOrganization(entity: OrganizationModel): AxiosPromise<OrganizationModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getOrganization(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteOrganization(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const organizationService = new OrganizationService();