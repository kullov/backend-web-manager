import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { StatusModel } from '@/models/StatusModel';
const ROOT_API = 'http://localhost:8888/api/statuss/';  // Root api
class StatusService extends Vue {

  public getAllStatuss(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createStatus(entity: StatusModel): AxiosPromise<StatusModel> {
    return Vue.axios.post<StatusModel>(ROOT_API, entity);
  }

  public updateStatus(entity: StatusModel): AxiosPromise<StatusModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getStatus(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteStatus(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const statusService = new StatusService();