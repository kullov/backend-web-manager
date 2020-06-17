export class RegisterModel {
  id?: number;
  dateCreated?: Date;
  startDate?: Date;
  endDate?: Date;
  internRegisterCode?: string;
  internRegisterId?: number;
  requestRegisterPosition?: string;
  requestRegisterId?: number;

  constructor(init?: Partial<RegisterModel>) {
    Object.assign(this, init);
  }
}