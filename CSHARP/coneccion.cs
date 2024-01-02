public class coneccion
{
public MainProcess()

        {
            string cadenaConexion;
            try
            {
                log.Info("Iniciando constructor.");
                var ConnectionStrings = ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
                cadenaConexion = ConnectionStrings;
            }
            catch (Exception ex)
            {
                string prueba = ex.Message;
                log.Error("Main() > Excepción no controlada.", ex);
            }
        }

public void MostrarEstructura2()
        {

            try

            {

                SqlConnection conexion = new SqlConnection(cadenaConexion);

                conexion.Open();

                SqlDataReader myReader = null;

                String strCadSQL = @"SELECT * FROM Tabla";

                SqlCommand myCommand = new SqlCommand(strCadSQL, conexion);

                myReader = myCommand.ExecuteReader();

                Console.WriteLine("Datos de tabla");

                while (myReader.Read())

                {

                    int nId_Journal;

                    nId_Journal = Convert.ToInt32(myReader.GetString(1));

                    myReader.GetString(2);

                }

                //Console.WriteLine("  ...OK. Operacion exitosa!");

                conexion.Close();

            }

            catch (Exception e)

            {

                Console.WriteLine(e.ToString());

            }

        }

        public DataTable MostrarEstructura3()

        {

            DataTable dt = new DataTable() ;

            try

            {

                using (SqlConnection cn = new SqlConnection(this.cadenaConexion))

                {

                    SqlCommand cmd = new SqlCommand("spValidarSiExisteTabla", cn);

 

                    cmd.Connection.Open();

                    cmd.CommandType = CommandType.StoredProcedure;

                    //cmd.Parameters.AddWithValue("@ejemplo", o.ejemplo);

                    dt.Load(cmd.ExecuteReader());

 

                    cmd.Connection.Close();

                }

            }

            catch (Exception e)

            {

                throw e;

            }

            return dt;

        }

 
}