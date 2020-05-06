export class OrganizationModel {
  public name: string = '';
  public id: string = '';
  public contact: string = '';
  public email: string = '';
  public description: string = '';
  public address: string = 'Bac Tu Liem Ha Noi';
  public password: string = '';

  constructor(init?: Partial<OrganizationModel>) {
    Object.assign(this, init);
  }
}