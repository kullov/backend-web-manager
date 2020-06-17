import { AxiosPromise } from 'axios';
import Vue from 'vue';
import { TeacherModel } from '@/models/TeacherModel';
const ROOT_API = 'http://localhost:8888/api/teachers/';  // Root api
class TeacherService extends Vue {

  public getAllTeachers(): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API);
  }

  public createTeacher(entity: TeacherModel): AxiosPromise<TeacherModel> {
    return Vue.axios.post<TeacherModel>(ROOT_API, entity);
  }

  public updateTeacher(entity: TeacherModel): AxiosPromise<TeacherModel[]> {
    return Vue.axios.put(ROOT_API, entity);
  }

  public getTeacher(id: any): AxiosPromise<any[]> {
    return Vue.axios.get<any>(ROOT_API + id);
  }

  public deleteTeacher(id: string): AxiosPromise<any> {
    return Vue.axios.delete(ROOT_API + id);
  }

}
export const teacherService = new TeacherService();