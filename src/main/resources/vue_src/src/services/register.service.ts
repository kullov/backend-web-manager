import axios from 'axios';
import Vue from 'vue';
class RegisterService extends Vue {
  public processRegistration(account: any): Promise<any> {
    return axios.post('api/register', account);
  }
}
export const registerService = new RegisterService();