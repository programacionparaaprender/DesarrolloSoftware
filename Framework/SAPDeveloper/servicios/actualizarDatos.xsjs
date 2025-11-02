
var query;
var conn;

try{
    var params = $.request.body.asString();

	
	if (params !== undefined)
	{
	    var obj = JSON.parse(params);
	    var empresa = 'empresa';
	    
	    conn = $.db.getConnection();
	    query = ' UPDATE '+empresa+'."OWTR" SET "Columna" =\''+obj.dato+'\', ' +

	            ' where "DocEntry" = \'' + obj.codigo + '\'';
        var pstmt = conn.prepareStatement(query);   
        objCount = pstmt.executeUpdate();
        conn.commit();
        
        if(objCount > 0){

            objResult = "data actualizado.";
            
        }else{

		    objResult = "No se pudo completar la actualizacion." + query;
        }
	    
	}else{
	    objType = Constantes.ERROR_MESSAGE_RESPONSE;  
		objResult = "No ha ingresado los parámetros de entrada."; 
	}
	

	Response.sendSuccessResponse(objResult);
	conn.close();
}catch(e){
	objResult = e.message; 
	Response.sendErrorResponse(objResult);
}