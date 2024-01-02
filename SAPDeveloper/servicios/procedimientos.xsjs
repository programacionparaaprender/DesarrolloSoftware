$.import("EMPRESA.AppConfig", "AppConfig");
$.import("EMPRESA.Functions", "Functions");
var AppConfig = $.EMPRESA.AppConfig;
var functs = $.EMPRESA.Functions;
var val = functs.res;

try{
    var schema = $.request.parameters.get("empresa");
    var dato1 = $.request.parameters.get("dato1");
    if(schema !== undefined){
        if(dato1 === undefined){
            dato1 = 100;
        }
       
        var query;
    var conn = $.hdb.getConnection();
    var rs;
    
    var spConsulta = conn.loadProcedure(schema, "sp_Procedimiento");  
        
    
    var result = spConsultaLetras({
       dato1:dato1,
    }); 
        var resultSets = result['$resultSets'];  
        rs = resultSets[0]; 
       
       
        var mResult = [];
        var i;
       
        for(i = 0; i < rs.length ; i++)
        {
        mResult.push(rs[i]);
        }
       
        val.data = mResult;  
        val.size = val.data.length;
         
        functs.setResponse(functs.STATUS_OK, val);
    }else{
        val = functs.resError;
        val.message = "Error.";
        functs.setResponse(functs.BAD_REQUEST, val);
    }
}catch(e){
    val = functs.resError;
    val.message = e.message;
    functs.setResponse(functs.BAD_REQUEST, val);
}