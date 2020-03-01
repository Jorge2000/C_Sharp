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
    public partial class FormMantenimientoDeCliente : FormMantenimiento
    {
        public FormMantenimientoDeCliente()
        {
            InitializeComponent();
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
