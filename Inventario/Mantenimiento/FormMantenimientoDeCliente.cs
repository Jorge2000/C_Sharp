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
    public partial class FormMantenimientoDeCliente : FormMantenimiento
    {
        public FormMantenimientoDeCliente()
        {
            InitializeComponent();
        }


        public override void Limpiar()
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            checkBoxEstado.Checked = false;
        }
        public override void Consultar()
        {
               string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string query = string.Format("SELECT * FROM clientes WHERE codigo_cliente = '{0}'", codigo);
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
                txtEmail.Text = email;
                txtTelefono.Text = telefono;
                checkBoxEstado.Checked = estado;
            }
            else
            {
                Limpiar();
            }            
        }
        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }
        public override void validatingField(string campo, string value, TextBox txtBox)
        {
            base.validatingField(campo, value ,txtBox);
        }

        public override string clearString(TextBox str)
        {
            return base.clearString(str);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string nombre = clearString(txtNombre);
            string email = clearString(txtEmail);
            string codigo = clearString(txtCodigo);
            string telefono = clearString(txtTelefono);
            validatingField("nombre",nombre, txtNombre);
            validatingField("email",email,  txtEmail);
            validatingField("código",codigo,  txtCodigo);
            validatingField("teléfono",telefono,  txtTelefono);

        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }
    }
}
