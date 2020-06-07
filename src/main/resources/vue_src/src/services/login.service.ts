import Vue from 'vue';
import axios, { AxiosPromise } from 'axios';

class LoginService extends Vue {
  public openLogin(instance: Vue): void {
    instance.$emit('bv::show::modal', 'login-page');
  }
}
export const loginService = new LoginService(); 
