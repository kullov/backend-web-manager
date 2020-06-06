import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { RequestAssignmentModel } from '@/models/RequestAssignmentModel';
const ROOT_API = 'http://localhost:8888/api/request-assignments/';  // Root api
class RequestAssignmentService extends Vue {

  public getAllRequestAssignments() {
    return Vue.axios.get(ROOT_API);
  }

  public createRequestAssignment(entity: RequestAssignmentModel) {
    return Vue.axios.post(ROOT_API, entity);
  }

  public updateRequestAssignment(entity: RequestAssignmentModel) {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getRequestAssignment(id: any) {
    return Vue.axios.get(ROOT_API + id);
  }

  public deleteRequestAssignment(id: number) {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const requestAssignmentService = new RequestAssignmentService();