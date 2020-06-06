import { StatusModel } from './StatusModel';
import { OrganizationModel } from './OrganizationModel';
import { InternModel } from './InternModel';

export class RequestAssignmentModel {
  id?: number;
  startDate?: Date;
  endDate?: Date;
  dateCreated?: Date;
  statusName?: string;
  statusId?: number;
  internRequestAssignment?: InternModel;
  registerRequestAssignment?: OrganizationModel;
  status?: StatusModel;

  constructor(init?: Partial<RequestAssignmentModel>) {
    Object.assign(this, init);
  }
}