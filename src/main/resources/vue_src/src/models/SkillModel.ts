export class SkillModel {
  public id: string = '';
  public name: string = '';

  constructor(init?: Partial<SkillModel>) {
    Object.assign(this, init);
  }
}