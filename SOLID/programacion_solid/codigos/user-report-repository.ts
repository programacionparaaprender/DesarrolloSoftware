import { IReadable } from "./interface-readable";
import { MUser } from "./MUser";

export class UserReportRepository implements IReadable<MUser> {
    get(id: number): MUser {
        throw new Error("Method not implemented.");
    }
    getAll(): MUser[] {
        throw new Error("Method not implemented.");
    }

}