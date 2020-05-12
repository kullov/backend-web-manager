import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { RequestAssignmentModel } from '@/models/RequestAssignmentModel';
const ROOT_API = 'http://localhost:8888/api/requestAssignments/';  // Root api
class RequestAssignmentService extends Vue {

  public getAllRequestAssignments(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createRequestAssignment(entity: RequestAssignmentModel): AxiosPromise<RequestAssignmentModel> {
    return Vue.axios.post<RequestAssignmentModel>(ROOT_API, entity);
  }

  public updateRequestAssignment(entity: RequestAssignmentModel): AxiosPromise<RequestAssignmentModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getRequestAssignment(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteRequestAssignment(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const requestAssignmentService = new RequestAssignmentService();