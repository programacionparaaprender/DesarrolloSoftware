let customerOrder = {
		customerName:"Bharath",
		phoneNumber:123,
		items:["laptop", "iphone"]
};
console.log(customerOrder);
let jsonString = JSON.stringify(customerOrder);
console.log(jsonString);
let customOrderDeSerialized = JSON.stringify(jsonString);
console.log(customOrderDeSerialized);