﻿using System;
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
            DataSet DS = new DataSet();
            try
            {
                SqlConnection connect = new SqlConnection(@"server=ESTUDIANTE\SQLEXPRESS;"+
                "Trusted_Connection=yes;"+
                "database=inventario;"+
                "connection timeout=30");
                connect.Open();
                SqlDataAdapter adp = new SqlDataAdapter(query, connect);
                adp.Fill(DS);
                connect.Close();
                return DS;
            }
            catch (Exception)
            {
                throw;
            }

        }


    }
}
