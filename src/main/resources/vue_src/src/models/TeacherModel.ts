export class TeacherModel {
  public name: string = '';
  public contact: string = '';
  public email: string = '';
  public description: string = '';
  public address: string = 'Bac Tu Liem Ha Noi';
  public password: string = '';

  constructor(init?: Partial<TeacherModel>) {
    Object.assign(this, init);
  }
}