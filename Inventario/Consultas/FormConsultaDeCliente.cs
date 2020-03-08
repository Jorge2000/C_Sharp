using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Inventario
{
    public partial class FormConsultaDeCliente : FormConsulta
    {
        public FormConsultaDeCliente()
        {
            InitializeComponent();
        }

        public override void fillDataGrid(string table, TextBox field, string column, DataGridView dataGridView)
        {
            base.fillDataGrid(table, field, column, dataGridView);
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            fillDataGrid("clientes", txtNombre, "nombre", dataGridView);
        }


    }
}
