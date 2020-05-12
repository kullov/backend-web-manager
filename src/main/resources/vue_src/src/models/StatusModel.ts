export class StatusModel {
  id?: number;
  name?: string;

  constructor(init?: Partial<StatusModel>) {
    Object.assign(this, init);
  }
}