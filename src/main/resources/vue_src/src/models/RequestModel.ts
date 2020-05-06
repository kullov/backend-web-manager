export class RequestModel {
  public name: string = '';
  public amount: string = '';
  public position: string = '';
  public status: string = '';
  public time: string = '';
  public type: string = '';
  public description: string = '';
  public required: string = '';
  public address: string = 'Bac Tu Liem Ha Noi';

  constructor(init?: Partial<RequestModel>) {
    Object.assign(this, init);
  }
}