using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Crud = Utilidades.Crud;

namespace Utilidades
{
    class ExecutionDB
    {

        public static DataSet Ejecutar(string query)
        {
            DataSet dataSet = new DataSet();
            try
            {
                SqlConnection connnector = new SqlConnection(@"Data Source=ServerName;Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;");
                connnector.Open();
                SqlDataAdapter op = new SqlDataAdapter(query, connnector);
                op.Fill(dataSet);
                return dataSet;
            }
            catch (Exception e)
            {
                Console.WriteLine(Convert.ToString(e) + "");
                throw;
            }
        }


    }
}
