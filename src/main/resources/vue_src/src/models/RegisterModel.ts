import { InternModel } from './InternModel';
import { RequestModel } from './RequestModel';

export class RegisterModel {
  id?: number;
  dateCreated?: Date;
  startDate?: Date;
  endDate?: Date;
  internRegister?: InternModel;
  requestRegister?: RequestModel;

  constructor(init?: Partial<RegisterModel>) {
    Object.assign(this, init);
  }
}