import { IRemovable } from "./interface-removable";

export class UserRemovableRepository implements IRemovable {
    remove(id: number) {
        throw new Error("Method not implemented.");
    }
    
}