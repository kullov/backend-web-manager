export class AccountModel {
  public id?: any;
  public username?: string;
  public password?: string;
  public email?: string;
  public typeUserId?: any;
  public typeUser?: any;
  public role?: any;

  constructor(init?: Partial<AccountModel>) {
    Object.assign(this, init);
  }
}