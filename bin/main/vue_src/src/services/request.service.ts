import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { RequestModel } from '@/models/RequestModel';
const ROOT_API = 'http://localhost:8888/api/requests/';  // Root api
class RequestService extends Vue {

  public getAllRequests(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public getAllRequestsByPosition(position: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + 'position/' + position);
  }

  public getAllRequestsByOrganization(id: any) {
    return Vue.axios.get(ROOT_API + "organization/" + id);
  }

  public createRequest(entity: RequestModel): AxiosPromise<RequestModel> {
    return Vue.axios.post<RequestModel>(ROOT_API, entity);
  }

  public updateRequest(entity: RequestModel): AxiosPromise<RequestModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getRequest(id: any): AxiosPromise<any> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteRequest(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const requestService = new RequestService();