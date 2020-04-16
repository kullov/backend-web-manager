export class CreateFormModel {
  public name: string = '';
  public region: string = '';
  public date1: string = '';
  public date2: string = '';
  public delivery: boolean = false;
  public type: any = [];
  public resource: string = '';
  public desc: string = '';

  constructor(init?: Partial<CreateFormModel>) {
    Object.assign(this, init);
  }
}