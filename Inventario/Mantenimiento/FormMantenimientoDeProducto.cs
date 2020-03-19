using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;
using Inventario.Consultas;

namespace Inventario.Mantenimiento {
    public partial class FormMantenimientoDeProducto : FormMantenimiento {
        public FormMantenimientoDeProducto () {
            InitializeComponent ();
        }

        public void searchDataForegin (string tableName, string columna, string where, TextBox TextCodigo, TextBox TextName) {
            string value = clearString (TextCodigo);
            if (string.IsNullOrEmpty (value)) return;
            string query = string.Format ("SELECT {0} FROM {1} WHERE {2} = {3}", columna, tableName, where, value);
            DS = Execution.Ejecutar (query);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                TextName.Text = row[columna].ToString ();
            } else {
                MessageBox.Show ("No se encuentra dicho codigo");
                TextCodigo.Text = "";
                TextName.Text = "";
            }

        }

        public override void Limpiar () {
            txtNombre.Text = "";
            txtCodigoDpto.Text = "";
            txtCodigoSuplidor.Text = "";
            txtCantidadExistente.Text = "";
            txtPunReo.Text = "";
            txtCodigoUnidad.Text = "";
            txtPrecio.Text = "";
            checkBoxEstado.Checked = false;
            txtCodigo.Text = "";
        }

        public override void Salvar () {
            if (Controles.ValidarForm (this, ep, false)) return;
            string codigo = clearString (txtCodigo);
            string nombre = clearString (txtNombre);
            string codigoDepartamento = clearString (txtCodigoDpto);
            string codigoSuplidor = clearString (txtCodigoSuplidor);
            string cantidadExistente = clearString (txtCantidadExistente);
            string punto_reo = clearString (txtPunReo);
            string codigoUnidad = clearString (txtCodigoUnidad);
            string estado = (checkBoxEstado.Checked) ? "1" : "0";
            string precio = clearString (txtPrecio);

            string storeProcedureUpsertProducto = string.Format ("EXEC upsertProducto @codigo_producto = {0}, @nombre_producto = '{1}',@codigo_departamento = {2}, @codigo_suplidor = {3}, @cantidad_existente = {4}, @punto_reo = {5}, @codigo_unidad = {6}, @estado = {7},  @precio_de_venta = {8}", codigo, nombre, codigoDepartamento, codigoSuplidor, cantidadExistente, punto_reo, codigoUnidad, estado, precio);
            DS = Execution.Ejecutar (storeProcedureUpsertProducto);
            MessageBox.Show ("Accion realizada con exito");
            Limpiar ();
        }

        public void Consulta () {
            string codigo = txtCodigo.Text.Trim ();
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarProducto = string.Format ("EXEC consultarProducto {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarProducto);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text = row["nombre_producto"].ToString ();
                txtCodigoDpto.Text = row["codigo_departamento"].ToString ();
                txtCodigoSuplidor.Text = row["codigo_suplidor"].ToString ();
                txtCantidadExistente.Text = row["cantidad_existente"].ToString ();
                txtPunReo.Text = row["punto_reo"].ToString ();
                txtCodigoUnidad.Text = row["codigo_unidad"].ToString ();
                txtPrecio.Text = row["precio_de_venta"].ToString ();
                checkBoxEstado.Checked = Convert.ToBoolean (row["estado"].ToString ());

                searchDataForegin ("departamento", "nombre_departamento", "codigo_departamento", txtCodigoDpto, txtDepartamento);
                searchDataForegin ("suplidor", "nombre_suplidor", "codigo_suplidor", txtCodigoSuplidor, txtSuplidor);
                searchDataForegin ("unidad", "nombre_unidad", "codigo_unidad", txtCodigoUnidad, txtUnidad);
            }
        }

        public override void Consultar () {
            FormConsultaDeProducto ConsultaDeProducto = new FormConsultaDeProducto ();
            if (ConsultaDeProducto.ShowDialog () == DialogResult.OK) {
                txtCodigo.Text = ConsultaDeProducto.Codigo;
                SendKeys.Send ("{TAB}");
            }
            ConsultaDeProducto.Dispose ();
        }

        public override void Eliminar () {
            string codigo = clearString (txtCodigo);
            if (!string.IsNullOrEmpty (codigo)) {
                string storeProcedureEliminarProducto = string.Format ("EXEC eliminarProducto {0}", codigo);
                DS = Execution.Ejecutar (storeProcedureEliminarProducto);
                MessageBox.Show ("Accion realizada con exito");
            }
            Limpiar ();
        }

        public override void onlyFloat (object sender, KeyPressEventArgs e) {
            base.onlyFloat (sender, e);
        }

        public override void onlyInteger (object sender, KeyPressEventArgs e) {
            base.onlyInteger (sender, e);
        }

        public override void validatingField (string campo, string value, TextBox txtBox) {
            base.validatingField (campo, value, txtBox);
        }

        private void label2_Click (object sender, EventArgs e) {

        }

        private void txtNombre_TextChanged (object sender, EventArgs e) {

        }

        private void label6_Click (object sender, EventArgs e) {

        }

        private void textBox2_TextChanged (object sender, EventArgs e) {

        }

        private void btnSalvar_Click (object sender, EventArgs e) {
            Salvar ();
        }

        private void txtCodigo_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtCodigoDpto_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtCodigoSuplidor_TextChanged (object sender, EventArgs e) {

        }

        private void txtCodigoSuplidor_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtCodigoUnidad_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtPrecio_KeyPress (object sender, KeyPressEventArgs e) {
            onlyFloat (sender, e);
        }

        private void txtCantidadExistente_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void btnEliminar_Click (object sender, EventArgs e) {
            Eliminar ();
        }

        private void buttonCerrar_Click (object sender, EventArgs e) {
            Dispose ();
        }

        private void btnBuscar_Click (object sender, EventArgs e) {
            Consultar ();
        }

        private void txtCodigo_Validating (object sender, CancelEventArgs e) {
            Consulta ();
        }

        private void txtDepartamento_Validating (object sender, CancelEventArgs e) {

        }

        private void txtSuplidor_Validating (object sender, CancelEventArgs e) {

        }

        private void txtUnidad_Validating (object sender, CancelEventArgs e) {

        }

        private void txtCodigoDpto_Validating (object sender, CancelEventArgs e) {
            searchDataForegin ("departamento", "nombre_departamento", "codigo_departamento", txtCodigoDpto, txtDepartamento);
        }

        private void txtCodigoSuplidor_Validating (object sender, CancelEventArgs e) {
            searchDataForegin ("suplidor", "nombre_suplidor", "codigo_suplidor", txtCodigoSuplidor, txtSuplidor);
        }

        private void txtCodigoUnidad_Validating (object sender, CancelEventArgs e) {
            searchDataForegin ("unidad", "nombre_unidad", "codigo_unidad", txtCodigoUnidad, txtUnidad);
        }

        private void txtDepartamento_TextChanged (object sender, EventArgs e) {

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