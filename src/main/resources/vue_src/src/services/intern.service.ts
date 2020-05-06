import { AxiosPromise } from 'axios';
import Vue from 'vue';

const ROOT_API = 'http://localhost:8888/api/interns/';  // Root api
class InternService extends Vue {

  public getAllInterns(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createIntern(
    code: string, 
    firstName: string, 
    lastName: string,
    dateOfBirth: string,
    joinDate: string,
    className: string,
    password: string,
    address: string,
    internAbilities: any,
    avatar?: string,
    email?: string,
    phone?: string,
    description?: string,
    registerRequests?: any,
    requestAssignments?: any,
    organizationIntern?: any,
    ): AxiosPromise<any> {
    return Vue.axios.post<any>(ROOT_API, {
      code: code, 
      firstName: firstName, 
      lastName: lastName, 
      dateOfBirth: dateOfBirth, 
      description: description, 
      joinDate: joinDate,
      className: className, 
      password: password, 
      address: address, 
      internAbilities: internAbilities,
      avatar: avatar,
      email: email,
      phone: phone,
      registerRequests: registerRequests,
      requestAssignments: requestAssignments,
      organizationIntern: organizationIntern,
    });
  }

  public updateIntern(
      id: any,
      code: string, 
      firstName: string, 
      lastName: string,
      dateOfBirth: string,
      joinDate: string,
      className: string,
      password: string,
      address: string,
      internAbilities: any,
      avatar?: string,
      email?: string,
      phone?: string,
      description?: string,
      registerRequests?: any,
      requestAssignments?: any,
      organizationIntern?: any,
    ): AxiosPromise<any[]> {
    return Vue.axios.put(ROOT_API + id, {
      code: code, 
      firstName: firstName, 
      lastName: lastName, 
      dateOfBirth: dateOfBirth, 
      description: description, 
      joinDate: joinDate,
      className: className, 
      password: password, 
      address: address, 
      internAbilities: internAbilities,
      avatar: avatar,
      email: email,
      phone: phone,
      registerRequests: registerRequests,
      requestAssignments: requestAssignments,
      organizationIntern: organizationIntern,
    });
  }

  public getIntern(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteIntern(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const internService = new InternService();