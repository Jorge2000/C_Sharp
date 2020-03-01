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
    public partial class FormMantenimientoDeSuplidor : FormMantenimiento
    {
        public FormMantenimientoDeSuplidor()
        {
            InitializeComponent();
        }

        public override void Limpiar()
        {
            txtNombre.Text = "";
            txtCodigo.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            checkBoxEstado.Checked = false;
        }
        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }
        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string query = string.Format("SELECT * FROM suplidores WHERE codigo_suplidor = '{0}'", codigo);
            DS = Execution.Ejecutar(query);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                string nombre = row["nombre_departamento"].ToString().Trim();
                string email = row["email"].ToString().Trim();
                string telefono = row["telefono"].ToString().Trim();
                bool estado = Convert.ToBoolean(row["status"]);
                txtNombre.Text = nombre;
                checkBoxEstado.Checked = estado;
            }
            else
            {
                Limpiar();
            }

        }
    }
}
