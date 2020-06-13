import { RegisterModel } from './RegisterModel';
import { RequestAssignmentModel } from './RequestAssignmentModel';
import { AbilityModel } from './AbilityModel';

export class InternModel {
  id?: number;
  code?: number;
  firstName?: string;
  lastName?: string;
  dateOfBirth?: Date;
  joinDate?: Date;
  className?: string;
  avatar?: string;
  password?: string;
  email?: string;
  phone?: number;
  description?: string;
  address?: string;
  registerRequests?: RegisterModel[];
  // requestAssignments?: RequestAssignmentModel[];
  internAbilities?: AbilityModel[] = [];
  organizationInternId?: number;

  constructor(init?: Partial<InternModel>) {
    Object.assign(this, init);
  }
}