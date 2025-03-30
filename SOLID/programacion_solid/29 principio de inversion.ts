import { MailChimpService } from "./codigos/mail-chimp-service";
import { OrderService } from "./codigos/order-service";
import { SmtpClient } from "./codigos/smtp-client";
let smptClient: SmtpClient = new SmtpClient();
let mailchimpService: MailChimpService = new MailChimpService(smptClient);
let orderService: OrderService = new OrderService(mailchimpService);