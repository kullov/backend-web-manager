import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { RegisterModel } from '@/models/RegisterModel';
const ROOT_API = 'http://localhost:8888/api/register-requests/';  // Root api
class RegisterRequestService extends Vue {

  public getAllRegisters(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createRegister(entity: RegisterModel): AxiosPromise<RegisterModel> {
    let model = {
      endDate: entity.endDate,
      startDate: entity.startDate,
      internRegister: entity.internRegister,
      requestRegister: entity.requestRegister,
      registerRequestStatus: entity.registerRequestStatus
    }
    return Vue.axios.post<RegisterModel>(ROOT_API, model);
  }

  public updateRegister(entity: RegisterModel): AxiosPromise<RegisterModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getRegister(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteRegister(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const registerRequestService = new RegisterRequestService();