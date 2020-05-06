import { AxiosPromise } from 'axios';
import Vue from 'vue';

const ROOT_API = 'http://localhost:8888/api';  // Root api
const instance = Vue.axios.create({  
  baseURL: ROOT_API,  
  timeout: 1000  
});
class RequestAssignmentService extends Vue {

  public getAllRequestAssignments(): AxiosPromise<any[]> {
    return instance.get<any>('request-assignments');
  }

  public createRequestAssignment(
    startDate: string, 
    endDate: string, 
    dateCreated: string,
    status: string,
    internRequestAssignment?: any,
    organizationRequestAssignment?: any,
    ): AxiosPromise<any> {
    return instance.post<any>('request-assignments', {
      startDate: startDate, 
      endDate: endDate, 
      dateCreated: dateCreated, 
      status: status, 
      internRequestAssignment: internRequestAssignment, 
      organizationRequestAssignment: organizationRequestAssignment
    });
  }

  public updateRequestAssignment(
    id: any,
    startDate: string, 
    endDate: string, 
    dateCreated: string,
    status: string,
    internRequestAssignment?: any,
    organizationRequestAssignment?: any,
    ): AxiosPromise<any[]> {
    return instance.put('request-assignments/' + id, {
      startDate: startDate, 
      endDate: endDate, 
      dateCreated: dateCreated, 
      status: status, 
      internRequestAssignment: internRequestAssignment, 
      organizationRequestAssignment: organizationRequestAssignment
    });
  }

  public getRequestAssignment(id: any): AxiosPromise<any[]> {
    return instance.get<any>('request-assignments/' + id);
  }

  public deleteRequestAssignment(id: string): AxiosPromise<any> {
    return instance.delete('request-assignments/' + id);
  }

}
export const requestAssignmentService = new RequestAssignmentService();