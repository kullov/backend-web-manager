import Vue from 'vue';
import axios, { AxiosPromise } from 'axios';

const ROOT_API = 'http://localhost:8888';
class LoginService extends Vue {
  private token: string = 'x-auth-token';
  private userDetailKey: string = 'user-detail';

  public isAuthenticated(): boolean {
    return localStorage[this.token] !== null
      && localStorage[this.token] !== undefined
      && localStorage[this.token] !== ''
      && localStorage[this.token] !== 'null';
  }

  public addToken(config: any): any {
    if (localStorage[this.token]) {
      config.headers[this.token] = localStorage[this.token];
    }
    return config;
  }

  public login(request: any): Promise<any> {
    return Vue.axios.post(ROOT_API + '/authenticate', request)
    .then((res) => {
        if (res.data.token) {
          // Success
          localStorage[this.token] = res.data.token;
          return true;
        } else {
          alert(res.data);
        }
        return false;
      });
  }

  public logout(): Promise<any> {
    // TODO: Server-side token handler
    localStorage[this.token] = '';
    // localStorage[this.userDetailKey] = '';
    return Promise.resolve(true);
  }
}
export const loginService = new LoginService(); 
