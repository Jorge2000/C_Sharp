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

        public override bool IsValidEmail(string email)
        {
            return base.IsValidEmail(email);
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

			string storeProcedureConsultarCliente = string.Format("EXEC consultarCliente {0}", codigo); 
            DS = Execution.Ejecutar(storeProcedureConsultarCliente);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                string nombre = row["nombre_cliente"].ToString().Trim();
                bool estado = Convert.ToBoolean(row["estado"]);
                txtNombre.Text = nombre;
                checkBoxEstado.Checked = estado;
            }
            else {
                Limpiar();
            }        
        }
        
        public override void  Salvar() {
            string nombre = clearString(txtNombre);
            string email = clearString(txtEmail);
            string codigo = clearString(txtCodigo);
            string telefono = clearString(txtTelefono);
            string estado = checkBoxEstado.Text;
            string storeProcedureUpsertCliente = string.Format("EXEC upsertCliente {0}, {1}, {2}, {3}, {4}", codigo, nombre, email, telefono, estado );
            if (IsValidEmail(email))
            {
                DS = Execution.Ejecutar(storeProcedureUpsertCliente);
                MessageBox.Show("Accion realizada con exito");
            }
            else {
                MessageBox.Show("Por favor revise su correo electrónico");
            }
        }

        public override void Eliminar() {
            string codigo = clearString(txtCodigo);
            string storeProcedureEliminarCliente = string.Format("EXEC eliminarCliente {0}", codigo );
            DS = Execution.Ejecutar(storeProcedureEliminarCliente);
            MessageBox.Show("Accion realizada con exito");
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
            Salvar();
            /*
            validatingField("nombre",nombre, txtNombre);
            validatingField("email",email,  txtEmail);
            validatingField("código",codigo,  txtCodigo);
            validatingField("teléfono",telefono,  txtTelefono);
             */

        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtCodigo_Validating(object sender, CancelEventArgs e)
        {
            Consultar();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();       
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Consultar();
        }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {
            Dispose();
        }

    }
}
