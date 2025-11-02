export interface IReadable<T> {
    get(id: number): T;
    getAll(): Array<T>;
}
