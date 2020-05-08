import Vue from 'vue';
import { AxiosPromise } from 'axios';
import { AbilityModel } from '@/models';

const ROOT_API = 'http://localhost:8888/api/abilities/';  // Root api
class AbilityService extends Vue {
  public getAllAbilities(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
    // return Vue.axios.get<any>(ROOT_API + '/all', { params: { page: page }});
  }

  public createAbility(entity: AbilityModel): AxiosPromise<AbilityModel> {
    return Vue.axios.post<AbilityModel>(ROOT_API, entity);
  }

  public updateAbility(entity: AbilityModel): AxiosPromise<any[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getAbility(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteAbility(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const abilityService = new AbilityService();