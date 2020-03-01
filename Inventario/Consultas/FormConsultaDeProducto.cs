using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Inventario.Consultas
{
    public partial class FormConsultaDeProducto : FormConsulta
    {
        public FormConsultaDeProducto()
        {
            InitializeComponent();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            fillDataGrid("producto", txtNombre, "nombre_producto", dataGridView);
        }
    }
}
