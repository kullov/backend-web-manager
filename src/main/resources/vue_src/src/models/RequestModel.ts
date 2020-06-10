import { AbilityModel } from './AbilityModel';
import { RegisterModel } from './RegisterModel';
import { StatusModel } from './StatusModel';
import { OrganizationModel } from './OrganizationModel';

export class RequestModel {
  id?: number;
  position?: string;
  amount?: number;
  dateCreated?: Date;
  status?: number;
  description?: string;
  type?: string;
  registerRequests?: RegisterModel[];
  requestAbilities?: AbilityModel[];
  organizationRequest?: OrganizationModel;
  requestStatus?: StatusModel;
  assigned?: number;

  constructor(init?: Partial<RequestModel>) {
    Object.assign(this, init);
  }
}