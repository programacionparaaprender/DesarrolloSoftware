

### CRUD SAP
https://help.sap.com/viewer/0eec0d68141541d1b07893a39944924e/2.0.00/en-US/469e20f56d6110148618da80690c499b.html


### services layers de ejemplo
https://sap.highwaytwo.com/Service%20Layer%20API%20Reference.html
https://b1marketplace.com:50000/Service%20Layer%20API%20Reference.html



### repositorios
github.com/customer-stories/sap

### services layers
https://sap-samples.github.io/smb-summit-hackathon/b1sl.html

### peticiones al services layers
https://answers.sap.com/questions/12985881/service-layer-payments.html
GET https://<host>/b1s/v2/PurchaseInvoices?$select=DocEntry&$filter=DocNum eq 667

### crear nota de credito
en el DocumentLines:[
    {
        BaseType:13,
        BaseEntry:502,
        BaseLine:0
    }
]


### asignar tipo de cambio
https://sap-samples.github.io/smb-summit-hackathon/b1sl.html

POST https://localhost:50000/b1s/v1/SBOBobService_SetCurrencyRate
{
    "Currency": "EUR",
    "Rate": "4.8"
    "RateDate": "20161129"
}


### obtener el tipo de cambio en dolares de una fecha
POST
https://ip:50000/b1s/v1/SBOBobService_GetCurrencyRate
{
    "Currency": "US$",
    "Date": "20211001"
}

### crear un campo por medio de services layers
crear un campo a traves de postman
https://IP:50000/b1s/v1/UserFieldsMD
{
    "Name": "INT_Migrado",
    "Type": "db_Alpha",
    "Size": 1,
    "Description": "[Serv.Int]¿Migrado?",
    "SubType": "st_None",
    "DefaultValue": "N",
    "TableName": "OCRD",
    "FieldID": 1,
    "EditSize": 1,
    "Mandatory": "tNO",
    "ValidValuesMD": [
        {
            "Value": "N",
            "Description": "NO"
        },
        {
            "Value": "Y",
            "Description": "SI"
        }
    ]
}
