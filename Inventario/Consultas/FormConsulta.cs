using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;


namespace Inventario
{
    public partial class FormConsulta : FormBase
    {
        public FormConsulta()
        {
            this.puedeConsultar = true;
            this.puedeImprimir = true;
            InitializeComponent();
        }

        public virtual void fillDataGrid(string table, TextBox field, string column, DataGridView dataGridView)
        {
            string query = "SELECT * FROM " + table;
            string value = field.Text.Trim();
            if (!string.IsNullOrEmpty(value))
            {
                string where = string.Format(" WHERE {0} LIKE '%{1}%';", column, value);
                query += where;
                DS = Execution.Ejecutar(query);
                int countTable = DS.Tables.Count;
                if (countTable > 0)
                {
                    dataGridView.DataSource = DS.Tables[0];
                }
            }
        }



        private void buttonCerrar_Click(object sender, EventArgs e)
        {

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
