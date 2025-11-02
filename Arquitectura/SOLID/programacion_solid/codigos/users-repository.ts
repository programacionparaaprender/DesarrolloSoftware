import { IRepository } from "./interface-repository";
import { MUser } from "./MUser";
export class UsersRepository implements IRepository<MUser>{
    update(model: MUser): void {
        throw new Error("Method not implemented.");
    }
    create(model: MUser): void {
        throw new Error("Method not implemented.");
    }
    get(id: number): MUser {
        throw new Error("Method not implemented.");
    }
    getAll(): MUser[] {
        throw new Error("Method not implemented.");
    }
    remove(id: number): void {
        throw new Error("Method not implemented.");
    }

}