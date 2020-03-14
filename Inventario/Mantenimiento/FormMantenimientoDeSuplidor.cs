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
    public partial class FormMantenimientoDeSuplidor : FormMantenimiento {
        public FormMantenimientoDeSuplidor () {
            InitializeComponent ();
        }

        public override bool IsValidEmail (string email) {
            return base.IsValidEmail (email);
        }

        public override void Eliminar () {
            string codigo = clearString (txtCodigo);
            if (!string.IsNullOrEmpty (codigo)) {
                string storeProcedureEliminarSuplidor = string.Format ("EXEC eliminarSuplidor {0}", codigo);
                DS = Execution.Ejecutar (storeProcedureEliminarSuplidor);
                MessageBox.Show ("Accion realizada con exito");
            }
            Limpiar ();
        }

        public override void Limpiar () {
            txtNombre.Text = "";
            txtCodigo.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            checkBoxEstado.Checked = false;
        }

        public override void Salvar () {
            if (Controles.ValidarForm (this, ep, false)) return;
            string nombre = clearString (txtNombre);
            string email = clearString (txtEmail);
            string codigo = clearString (txtCodigo);
            string telefono = clearString (txtTelefono);
            string estado = (checkBoxEstado.Checked) ? "1" : "0";
            string storeProcedureUpsertSuplidor = string.Format ("EXEC upsertSuplidor @codigo_suplidor = {0}, @nombre_suplidor = '{1}', @email = '{2}', @telefono =  '{3}', @estado = {4}", codigo, nombre, email, telefono, estado);

            DS = Execution.Ejecutar (storeProcedureUpsertSuplidor);
            MessageBox.Show ("Accion realizada con exito");
            Limpiar ();
        }

        public override void Consultar () {
            FormConsultaDeSuplidor ConsultaDeSuplidor = new FormConsultaDeSuplidor ();
            if (ConsultaDeSuplidor.ShowDialog () == DialogResult.OK) {
                txtCodigo.Text = ConsultaDeSuplidor.Codigo;
                SendKeys.Send ("{TAB}");
            }
            ConsultaDeSuplidor.Dispose ();
        }

        public void Consulta () {
            string codigo = txtCodigo.Text;
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarSuplidor = string.Format ("EXEC consultarSuplidor {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarSuplidor);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;

            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtTelefono.Text = row["telefono"].ToString ();
                txtNombre.Text = row["nombre_suplidor"].ToString ();
                txtEmail.Text = row["email"].ToString ();
                checkBoxEstado.Checked = Convert.ToBoolean (row["estado"]);
            }

        }

        public override void onlyInteger (object sender, KeyPressEventArgs e) {
            base.onlyInteger (sender, e);
        }
        private void txtCodigo_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void btnBuscar_Click (object sender, EventArgs e) {
            Consultar ();

        }

        private void btnSalvar_Click (object sender, EventArgs e) {
            Salvar ();

        }

        private void btnEliminar_Click (object sender, EventArgs e) {
            Eliminar ();
        }

        private void txtCodigo_Validating (object sender, CancelEventArgs e) {
            Consulta ();
        }

        private void linkLabel1_LinkClicked (object sender, LinkLabelLinkClickedEventArgs e) {
            Consultar ();
        }

        private void txtCodigo_TextChanged (object sender, EventArgs e) {
            string codigo = clearString (txtCodigo);
            if (string.IsNullOrEmpty (codigo)) {
                Limpiar ();
            } else {
                SendKeys.Send ("{TAB}");
            }
        }
    }
}