export interface IRepository<T> {
    update(model:T):void;
    create(model:T):void;
    get(id:number):T;
    getAll():Array<T>;
    remove(id:number):void;
}