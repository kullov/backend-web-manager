import { RequestModel } from './RequestModel';
import { InternModel } from './InternModel';

export class AbilityModel {
  id?: number;
  name?: string;
  description?: string;
  typeName?: string;
  typeId?: number;
  interns?: InternModel[];
  requests?: RequestModel[];

  constructor(init?: Partial<AbilityModel>) {
    Object.assign(this, init);
  }
}