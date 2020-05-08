import { AbilityModel } from './AbilityModel';
import { RegisterModel } from './RegisterModel';

export class RequestModel {
  id?: number;
  position?: string;
  amount?: number;
  dateCreated?: Date;
  status?: number;
  description?: string;
  type?: string;
  registerRequests?: RegisterModel[];
  requestStatusName?: string;
  requestStatusId?: number;
  requestAbilities?: AbilityModel[];
  organizationRequestName?: string;
  organizationRequestId?: number;

  constructor(init?: Partial<RequestModel>) {
    Object.assign(this, init);
  }
}