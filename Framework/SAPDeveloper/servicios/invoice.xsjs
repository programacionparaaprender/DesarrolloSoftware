
switch ( $.request.method ) {
       //Handle your GET calls here
       case $.net.http.GET:
            var query = 'select "DocEntry","DocNum" from '+parameter+'.ORDR limit 50';
            //var conn = $.hdb.getConnection();
            var rs;
            //rs = conn.consulta(query);
            //conn.close();
            rs = functions.consulta(query);
            response.mensaje = rs;
           break;
        //Handle your POST calls here
       case $.net.http.POST:
           response.mensaje = "Exec POST...";
           break;
       //Handle your other methods: PUT, DELETE
       default:
           $.response.status = $.net.http.METHOD_NOT_ALLOWED;
           response.mensaje = "Wrong request method";        
           break;
    }
