import axios from 'axios';
import Vue from 'vue';
const ROOT_API = 'http://localhost:8888/api/'; 
class RegisterService extends Vue {
  public processRegistration(account: any): Promise<any> {
    return axios.post(ROOT_API + 'register', account);
  }
}
export const registerService = new RegisterService();