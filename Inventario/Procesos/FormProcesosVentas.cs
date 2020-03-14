using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;

namespace Inventario.Procesos {
    public partial class FormProcesosVentas : FormProcesos {
        public FormProcesosVentas () {
            InitializeComponent ();
        }

        public void LimpiarCliente () {
            txtNombre.Text = "";

        }

        public void LimpiarProducto() {
            txtCodigoProducto.Text = "";
            txtNombreProducto.Text = "";
            txtPrecioProducto.Text = "";
            txtCantidadExistente.Text = "";
        }

        public void ConsultaCliente () {
            string codigo = txtCodigo.Text.Trim ();
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarCliente = string.Format ("EXEC consultarCliente {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarCliente);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;

            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text = row["nombre_cliente"].ToString ().Trim ();

            }

        }

        public void ConsultarCliente () {
            FormConsultaDeCliente ConsultaDeCliente = new FormConsultaDeCliente ();
            if (ConsultaDeCliente.ShowDialog () == DialogResult.OK) {
                txtCodigo.Text = ConsultaDeCliente.Codigo;
            }
            ConsultaDeCliente.Dispose ();
        }

        public void ConsultaProducto() {
            string codigo = clearString(txtCodigoProducto);
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarProducto = string.Format("EXEC consultarProducto {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarProducto);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0)
            {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombreProducto.Text = row["nombre_producto"].ToString();
                txtCantidadExistente.Text = row["cantidad_existente"].ToString();
                txtPrecioProducto.Text = row["precio_de_venta"].ToString();
            }        
        }

        public void ConsultarProducto()
        {
        }

       /* public void ConsultaProducto()
        {
        }*/

        public void fillCliente () {
            string codigo = clearString (txtCodigo);
            if (string.IsNullOrEmpty (codigo)) {
                LimpiarCliente ();
            } else {
                SendKeys.Send ("{TAB}");
            }

        }

        public void fillProducto() {
            string codigo = clearString(txtCodigoProducto);
            if (string.IsNullOrEmpty(codigo))
            {
                LimpiarProducto();
            }
            else
            {
                SendKeys.Send("{TAB}");
            }
        }

        public void nuevoProcesos () {
            dataGridView1.DataSource = null;
            LimpiarCliente ();
            LimpiarProducto();
        }

        private void txtCodigo_TextChanged_1 (object sender, EventArgs e) {
            fillCliente ();
        }

        private void txtCodigo_Validating_1 (object sender, CancelEventArgs e) {
            ConsultaCliente ();
        }

        private void linkLabel1_LinkClicked_1 (object sender, LinkLabelLinkClickedEventArgs e) {
            ConsultarCliente ();
        }

        private void txtCodigo_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void btnNuevo_Click (object sender, EventArgs e) {
            nuevoProcesos ();
        }

        private void btnConsultar_Click (object sender, EventArgs e) {

        }

        private void txtCodigoProducto_TextChanged(object sender, EventArgs e)
        {
            fillProducto();
        }

        private void txtCodigoProducto_Validating(object sender, CancelEventArgs e)
        {
            // ConsultaProducto();
        }

        private void txtCodigoProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtCantidadProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtPrecioProducto_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

    }
}