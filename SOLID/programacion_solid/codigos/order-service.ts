import { MailChimpService } from "./mail-chimp-service";
import { Message } from "./message";

export class OrderService {
    constructor(
        private readonly mailchimpService: MailChimpService
    ){

    }

    create(): void {
        //ToDo: código para crear la orden
        
        //Enviar notificación de la orden creada
// 01. Código para crear la orden

        //02. Notificar al cliente
        var message = new Message();
        message.to = "customer@email.com";
        message.from = "admin@kotori.com";
        message.body = "Se le asignó un curso";
        message.body = "Estimado, su orden ...";
        this.mailchimpService.send(message);
        
    }
}