import { RequestModel } from './RequestModel';
import { InternModel } from './InternModel';
import { RequestAssignmentModel } from './RequestAssignmentModel';

export class OrganizationModel {
  id?: number;
  employeeCount?: number;
  grossRevenue?: string;
  name?: string;
  taxNumber?: string;
  password?: string;
  email?: string;
  contact?: string;
  description?: string;
  address?: string;
  requests?: RequestModel[];
  interns?: InternModel[];
  requestAssignments?: RequestAssignmentModel[];

  constructor(init?: Partial<OrganizationModel>) {
    Object.assign(this, init);
  }
}