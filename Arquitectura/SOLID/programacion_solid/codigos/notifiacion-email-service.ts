import { INotification } from "./interface-notificacion";

export class NotifiacionEmailService implements INotification {
    constructor(
        private readonly to:string,
        private readonly subject:string
    ){

    }

    notify(): void {
        throw new Error("Method not implemented.");
    }

}