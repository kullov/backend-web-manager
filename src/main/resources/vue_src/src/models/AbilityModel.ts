export class AbilityModel {
  public id: string = '';
  public name: string = '';

  constructor(init?: Partial<AbilityModel>) {
    Object.assign(this, init);
  }
}