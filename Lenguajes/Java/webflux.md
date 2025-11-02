### ejemplos webflux
https://www.programcreek.com/java-api-examples/docs/?api=reactor.core.publisher.Flux

import org.springframework.beans.factory.annotation.Value;

@Value("${server.port}")
    private String port;
    
    @Value("${spring.datasource.username}")
    private String username;


BillingAccount account1 = new BillingAccount("Financial Account",

"606876945",

"/accounts/v3/accounts/606876945",

"postpaid");

BillingAccount account2 = new BillingAccount("Billing Arrangement",

"606876945",

"undefined",

null);

List<BillingAccount> billingAccount = new LinkedList<BillingAccount>();

billingAccount.add(account1);

billingAccount.add(account2);

ProductOffering productOffering;

productOffering = new ProductOffering("Trío Movistar Voz Internet Estándar (RV)",

"34474865",

"/productCatalog/v2/offerings/100003681");

Product prod1 = new Product("true",

"Trío Movistar Voz Internet Estándar (RV)",

"Trío Movistar Voz Internet Estándar (RV)",

"100003681",

"/productInventory/v2/products/100003681",

"true",

"100003681",

"bundle",

"active",

billingAccount,

productOffering);

Flux<Product> response = Flux.empty();

response = Flux.create(emitter -> emitter.next(prod1));