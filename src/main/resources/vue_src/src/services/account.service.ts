import axios from 'axios';
import { Store } from 'vuex';
import VueRouter from 'vue-router';
const ROOT_API = 'http://localhost:8888/api/';  // Root api

export default class AccountService {
  constructor(private store: Store<any>, private router: VueRouter) {
    this.init();
  }

  public init(): void {
    const token = localStorage.getItem('jhi-authenticationToken') || sessionStorage.getItem('jhi-authenticationToken');
    if (!this.store.getters.account && !this.store.getters.logon && token) {
      this.retrieveAccount();
    }
    this.retrieveProfiles();
  }

  public retrieveProfiles(): void {
    axios.get(ROOT_API +'management/info').then(res => {
      if (res.data && res.data.activeProfiles) {
        this.store.commit('setRibbonOnProfiles', res.data['display-ribbon-on-profiles']);
        this.store.commit('setActiveProfiles', res.data['activeProfiles']);
      }
    });
  }

  public retrieveAccount(): void {
    this.store.commit('authenticate');
    axios
      .get(ROOT_API+'account')
      .then(response => {
        const account = response.data;
        debugger;
        if (account) {
          this.store.commit('authenticated', account);
          if (sessionStorage.getItem('requested-url')) {
            //@ts-ignore
            this.router.replace(sessionStorage.getItem('requested-url'));
            sessionStorage.removeItem('requested-url');
          }
        } else {
          this.store.commit('logout');
          this.router.push('/');
          sessionStorage.removeItem('requested-url');
        }
      })
      .catch(() => {
        this.store.commit('logout');
        this.router.push('/');
      });
  }

  public hasAnyAuthority(authorities: any): boolean {
    if (typeof authorities === 'string') {
      authorities = [authorities];
    }
    if (!this.authenticated || !this.userAuthorities) {
      return false;
    }

    for (let i = 0; i < authorities.length; i++) {
      if (this.userAuthorities.includes(authorities[i])) {
        return true;
      }
    }

    return false;
  }

  public get authenticated(): boolean {
    return this.store.getters.authenticated;
  }

  public get userAuthorities(): any {
    return this.store.getters.account.authorities;
  }
}