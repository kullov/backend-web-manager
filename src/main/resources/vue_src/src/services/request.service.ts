import { AxiosPromise } from 'axios';
import Vue from 'vue';

const ROOT_API = 'http://localhost:8888/api/requests/';  // Root api
class RequestService extends Vue {

  public getAllRequests(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createRequest(
    position: string, 
    amount: string, 
    dateCreated: string,
    status: string,
    description: string,
    type: string,
    requestStatus: string,
    registerRequests?: any,
    requestAbilities?: any,
    organizationRequest?: any
    ): AxiosPromise<any> {
    return Vue.axios.post<any>(ROOT_API, {
      position: position, 
      amount: amount, 
      dateCreated: dateCreated, 
      status: status, 
      description: description, 
      type: type,
      requestStatus: requestStatus, 
      registerRequests: registerRequests, 
      requestAbilities: requestAbilities, 
      organizationRequest: organizationRequest
    });
  }

  public updateRequest(
      id: any,
      position: string, 
      amount: string, 
      dateCreated: string,
      status: string,
      description: string,
      type: string,
      requestStatus: string,
      registerRequests?: any,
      requestAbilities?: any,
      organizationRequest?: any
    ): AxiosPromise<any[]> {
    return Vue.axios.put(ROOT_API + id, {
      position: position, 
      amount: amount, 
      dateCreated: dateCreated, 
      status: status, 
      description: description, 
      type: type,
      requestStatus: requestStatus, 
      registerRequests: registerRequests, 
      requestAbilities: requestAbilities, 
      organizationRequest: organizationRequest
    });
  }

  public getRequest(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteRequest(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const requestService = new RequestService();