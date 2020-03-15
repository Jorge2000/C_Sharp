using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;

namespace Inventario {
    public partial class FormMantenimientoDeCliente : FormMantenimiento {
        public FormMantenimientoDeCliente () {
            InitializeComponent ();
        }

        public override bool IsValidEmail (string email) {
            return base.IsValidEmail (email);
        }

        public override void Consultar () {
            FormConsultaDeCliente ConsultaDeCliente = new FormConsultaDeCliente ();
            if (ConsultaDeCliente.ShowDialog () == DialogResult.OK) {
                txtCodigo.Text = ConsultaDeCliente.Codigo;
            }
            ConsultaDeCliente.Dispose ();
        }

        public override void Limpiar () {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            checkBoxEstado.Checked = false;
        }

        public void Consulta () {
            string codigo = txtCodigo.Text.Trim ();
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarCliente = string.Format ("EXEC consultarCliente {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarCliente);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;

            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text = row["nombre_cliente"].ToString ().Trim ();
                txtEmail.Text = row["email"].ToString ().Trim ();
                txtTelefono.Text = row["telefono"].ToString ().Trim ();
                checkBoxEstado.Checked = Convert.ToBoolean (row["estado"]);

            }

        }

        public override void Salvar () {

            if (Controles.ValidarForm (this, ep, false)) return;
            string nombre = clearString (txtNombre);
            string email = clearString (txtEmail);
            string codigo = clearString (txtCodigo);
            string telefono = clearString (txtTelefono);
            string estado = (checkBoxEstado.Checked) ? "1" : "0";
            string storeProcedureUpsertCliente = string.Format ("EXEC upsertCliente @codigo_cliente = {0}, @nombre_cliente = '{1}', @email = '{2}', @telefono = '{3}', @estado = {4}", codigo, nombre, email, telefono, estado);
            if (IsValidEmail (email)) {
                DS = Execution.Ejecutar (storeProcedureUpsertCliente);
                MessageBox.Show ("Accion realizada con exito");
            }
            Limpiar ();
        }

        public override void Eliminar () {
            string codigo = clearString (txtCodigo);
            if (!string.IsNullOrEmpty (codigo)) {
                string storeProcedureEliminarCliente = string.Format ("EXEC eliminarCliente {0}", codigo);
                DS = Execution.Ejecutar (storeProcedureEliminarCliente);
                MessageBox.Show ("Accion realizada con exito");
            }
            Limpiar ();
        }

        public override void onlyInteger (object sender, KeyPressEventArgs e) {
            base.onlyInteger (sender, e);
        }

        public override void validatingField (string campo, string value, TextBox txtBox) {
            base.validatingField (campo, value, txtBox);
        }

        public override string clearString (TextBox str) {
            return base.clearString (str);
        }

        private void btnSalvar_Click (object sender, EventArgs e) {
            Salvar ();
        }

        private void txtCodigo_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtCodigo_Validating (object sender, CancelEventArgs e) {
            Consulta ();
        }

        private void btnEliminar_Click (object sender, EventArgs e) {
            Eliminar ();
        }

        private void btnBuscar_Click (object sender, EventArgs e) {
            Consultar ();
        }

        private void buttonCerrar_Click (object sender, EventArgs e) {
            Dispose ();
        }

        private void txtCodigo_TextChanged (object sender, EventArgs e) {
            string codigo = clearString (txtCodigo);
            if (string.IsNullOrEmpty (codigo)) {
                Limpiar ();
            } else {
                SendKeys.Send ("{TAB}");
            }
        }

        private void linkLabel1_LinkClicked (object sender, LinkLabelLinkClickedEventArgs e) {
            Consultar ();
        }

    }
}