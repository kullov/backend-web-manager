export class InternModel {
  public id: string = '';
  public firstName: string = ''; //first_name
  public lastName: string = ''; //last_name
  public code: string = '';
  public phone: string = '';
  public email: string = '';
  public dateOfBirth: string = ''; //date_of_birth
  public address: string = 'Bac Tu Liem Ha Noi';
  public className: string = ''; //class_name
  public password: string = '';
  public joinDate: string = ''; //Join_date
  public avatar: string = '';
  public description: string = '';

  constructor(init?: Partial<InternModel>) {
    Object.assign(this, init);
  }
}