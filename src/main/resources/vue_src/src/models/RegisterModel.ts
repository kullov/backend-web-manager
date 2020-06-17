import { InternModel } from './InternModel';
import { RequestModel } from './RequestModel';
import { StatusModel } from './StatusModel';

export class RegisterModel {
  id?: number;
  dateCreated?: Date;
  startDate?: Date;
  endDate?: Date;
  internRegister?: InternModel;
  requestRegister?: RequestModel;
  registerRequestStatus: StatusModel = new StatusModel();

  constructor(init?: Partial<RegisterModel>) {
    Object.assign(this, init);
  }
}