export interface IWriteable<T> {
    update(model: T);
    create(model:T);
}