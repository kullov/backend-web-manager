export class RequestAssignment {
  public idRequest: string = '';
  public id: string = '';
  public firstName: string = '';
  public lastName: string = '';
  public startDate: string = '';
  public endDate: string = '';
  public position: string = '';
  public status: string = '';
  public dateCreated: string = '';
  public idOrganization: string = '';

  constructor(init?: Partial<RequestAssignment>) {
    Object.assign(this, init);
  }
}