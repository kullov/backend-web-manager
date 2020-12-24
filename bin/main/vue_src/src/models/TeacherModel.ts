export class TeacherModel {
  id?: number;
  name?: string;
  code?: string;
  className?: string;
  contact?: number;
  password?: string;
  email?: string;
  address?: string;

  constructor(init?: Partial<TeacherModel>) {
    Object.assign(this, init);
  }
}