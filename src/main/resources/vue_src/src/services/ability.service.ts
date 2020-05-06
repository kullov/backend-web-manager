import Vue from 'vue';
import { AxiosPromise } from 'axios';
import { AbilityModel } from '@/models';

const ROOT_API = 'http://localhost:8888/api/abilities/';  // Root api
class AbilityService extends Vue {
  public getAllAbilities(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
    // return Vue.axios.get<any>(ROOT_API + '/all', { params: { page: page }});
  }

  public createAbility(name: string, description: string, type: string): AxiosPromise<any> {
    return Vue.axios.post<any>(ROOT_API, {name: name, description: description, type: type});
  }

  public updateAbility(id: any, name: string, description: string, type: string): AxiosPromise<any[]> {
    return Vue.axios.put(ROOT_API + id, {name: name, description: description, type: type});
  }

  public getAbility(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteAbility(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const abilityService = new AbilityService();