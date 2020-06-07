import { AxiosPromise } from 'axios';
import axios from 'axios';
import Vue from 'vue';
import { InternModel } from '@/models/InternModel';
const ROOT_API = 'http://localhost:8888/api/interns/';  // Root api
const baseApiUrl = 'api/interns';
class InternService extends Vue {

  public getAllInterns(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createIntern(entity: InternModel): AxiosPromise<InternModel> {
    return Vue.axios.post<InternModel>(ROOT_API, entity);
  }

  public updateIntern(entity: InternModel): Promise<InternModel> {
    return new Promise<InternModel>((resolve, reject) => {
      axios
        .put(`${ROOT_API}`, entity)
        .then(function(res) {
          resolve(res.data);
        })
        .catch(err => {
          reject(err);
        });
    });
  }

  public getIntern(id: any): AxiosPromise<any> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteIntern(id: any): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const internService = new InternService();