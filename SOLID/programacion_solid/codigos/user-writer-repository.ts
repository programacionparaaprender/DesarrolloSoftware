import { IWriteable } from "./interface-writeable";
import { MUser } from "./MUser";

export class UserWriterRepository implements IWriteable<MUser> {
    update(model: MUser) {
        throw new Error("Method not implemented.");
    }
    create(model: MUser) {
        throw new Error("Method not implemented.");
    }

}