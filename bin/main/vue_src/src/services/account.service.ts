import axios, { AxiosPromise } from 'axios';
import Vue from 'vue';
import { AccountModel } from '@/models/AccountModel';
const ROOT_API = 'http://localhost:8888/api/user/';   // Root api

export default class AccountService {
  public getAllUser(page: number) {
    return Vue.axios.get(ROOT_API + 'all', {params: { page }});
  }

  public getDetail(id: string) {
    return Vue.axios.get<AccountModel>(ROOT_API + 'detail/' + id);
  }

  public getUserByUsername(username: string) {
    return Vue.axios.get(ROOT_API + username);
  }

  public create(data: AccountModel){
    return Vue.axios.post(ROOT_API + 'create', data);
  }

  public update(data: AccountModel){
    return Vue.axios.put(ROOT_API + 'update/' + data.id, data);
  }

  public delete(id: string){
    return Vue.axios.delete(ROOT_API + 'delete/' + id);
  }

  public getAllRoles() {
    return Vue.axios.get('http://localhost:8888/api/roles');
  }

  // public hasAnyAuthority(authorities: any): boolean {
  //   if (typeof authorities === 'string') {
  //     authorities = [authorities];
  //   }
  //   if (!this.authenticated || !this.userAuthorities) {
  //     return false;
  //   }

  //   for (let i = 0; i < authorities.length; i++) {
  //     if (this.userAuthorities.includes(authorities[i])) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }
}
export const accountService = new AccountService();