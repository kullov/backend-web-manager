import Vue from 'vue';
import { AxiosPromise } from 'axios';
import { AbilityModel } from '@/models';
class AbilityService extends Vue {
  private ROOT_API = 'http://localhost:8888/api/abilities';  // Root api
  // private ROOT_API = 'http://localhost:8090/api/task';  // Root api

  public getAllTasks(): AxiosPromise<AbilityModel[]> {
    return Vue.axios.get<any>(this.ROOT_API);
    // return Vue.axios.get<any>(this.ROOT_API + '/all', { params: { page: page }});
  }

  // public getAll(taskName: string, startDate: Date, endDate: Date, status: string, page: number): AxiosPromise<AbilityModel[]> {
  //   return Vue.axios.get<any>(this.ROOT_API + '/findAll', { params: {taskName: taskName, startDate: startDate, endDate: endDate, status: status, page: page}});
  // }

  // public getAllTaskByName(taskName: any, page: number): AxiosPromise<AbilityModel[]> {
  //   return Vue.axios.get<any>(this.ROOT_API + '/taskName', {params: { taskName: taskName, page: page}});
  // }

  // public getAllTasksByStartDate(date: string, page: number): AxiosPromise<AbilityModel[]> {
  //   return Vue.axios.get<any>(this.ROOT_API + '/start_date', {params: { startDate: date, page: page}});
  // }

  // public getAllTasksByEndDate(date: string, page: number): AxiosPromise<AbilityModel[]> {
  //   return Vue.axios.get<any>(this.ROOT_API + '/end_date', {params: { endDate: date, page: page}});
  // }

  // public getAllTasksByStatus(status: string, page: number): AxiosPromise<AbilityModel[]> {
  //   return Vue.axios.get<any>(this.ROOT_API + '/status', {params: { status: status, page: page }});
  // }

  public getDetail(id: string): AxiosPromise<AbilityModel> {
    return Vue.axios.get<AbilityModel>(this.ROOT_API + '/' + id);
  }

  // public create(data: AbilityModel): AxiosPromise<any> {
  //   return Vue.axios.post<any>(this.ROOT_API + '/create', data);
  // }

  // public update(data: AbilityModel): AxiosPromise<any> {
  //   return Vue.axios.put<any>(this.ROOT_API + '/update/' + data.id, data);
  // }

  // public delete(id: string): AxiosPromise<any> {
  //   return Vue.axios.delete(this.ROOT_API + '/delete/' + id);
  // }

}
export const abilityService = new AbilityService();