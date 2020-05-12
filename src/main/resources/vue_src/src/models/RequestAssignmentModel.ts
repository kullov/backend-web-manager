export class RequestAssignmentModel {
  id?: number;
  startDate?: Date;
  endDate?: Date;
  dateCreated?: Date;
  statusName?: string;
  statusId?: number;
  internRequestAssignmentCode?: string;
  internRequestAssignmentId?: number;
  organizationRequestAssignmentName?: string;
  organizationRequestAssignmentId?: number;

  constructor(init?: Partial<RequestAssignmentModel>) {
    Object.assign(this, init);
  }
}