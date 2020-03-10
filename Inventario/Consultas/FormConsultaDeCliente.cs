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
    public partial class FormConsultaDeCliente : FormConsulta
    {
        public FormConsultaDeCliente()
        {
            InitializeComponent();
        }

        public override void Consultar()
        {
            string query = "SELECT * FROM cliente ";
            string value = txtNombre.Text.Trim();
            if (!string.IsNullOrEmpty(value))
            {
                string where = string.Format(" WHERE nombre_cliente LIKE '%{0}%';", value);
                query += where;
            }
            DS = Execution.Ejecutar(query);
            int countTable = DS.Tables.Count;
            if (countTable > 0)
            {
                dataGridView.DataSource = DS.Tables[0];
            }
        }

        public override void Seleccionar()
        {
            if (dataGridView.Rows.Count == 0) return;
            Codigo = dataGridView.Rows[dataGridView.CurrentCell.RowIndex].Cells[0].Value.ToString();
            DialogResult = DialogResult.OK;
            Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            this.Consultar();
        }


    }
}
