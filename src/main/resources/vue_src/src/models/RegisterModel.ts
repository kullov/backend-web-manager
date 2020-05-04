export class RegisterModel {
  public internId: string = '';
  public requestId: string = '';
  public startDate: string = ''; //start_date
  public endDate: string = ''; //end_date

  constructor(init?: Partial<RegisterModel>) {
    Object.assign(this, init);
  }
}