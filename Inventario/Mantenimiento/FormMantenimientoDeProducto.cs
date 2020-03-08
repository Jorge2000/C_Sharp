using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;


namespace Inventario.Mantenimiento
{
    public partial class FormMantenimientoDeProducto : FormMantenimiento
    {
        public FormMantenimientoDeProducto()
        {
            InitializeComponent();
        }

        public override void Limpiar()
        {
            txtNombre.Text = "";
            txtCodigoDpto.Text = "";
            txtCodigoSuplidor.Text = "";
            txtCantidadExistente.Text = "";
            txtPunReo.Text = "";
            txtCodigoUnidad.Text = "";
            txtPrecio.Text = "";
            checkBoxEstado.Checked = false;
        }

        public override void Salvar()
        {
            string codigo = clearString(txtCodigo);
            string nombre = clearString(txtNombre);
            string codigoDepartamento = clearString(txtCodigoDpto);
            string codigoSuplidor = clearString(txtCodigoSuplidor);
            string cantidadExistente = clearString(txtCantidadExistente);
            string punto_reo = clearString(txtPunReo);
            string codigoUnidad = clearString(txtCodigoUnidad);
            string estado = checkBoxEstado.Text;
            string precio = clearString(txtPrecio);

            string storeProcedureUpsertProducto = string.Format("EXEC upsertProducto {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}");
            DS = Execution.Ejecutar(storeProcedureUpsertProducto);
            MessageBox.Show("Accion realizada con exito");
        }

        public override void Consultar()
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarProducto = string.Format("EXEC consultarProducto {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarProducto);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                txtNombre.Text = row["nombre_producto"].ToString();;
                txtCodigoDpto.Text = row["codigo_departamento"].ToString();
                txtCodigoSuplidor.Text = row["codigo_suplidor"].ToString();
                txtCantidadExistente.Text = row["cantidad_existente"].ToString();
                txtPunReo.Text = row["pun_reo"].ToString();
                txtCodigoUnidad.Text = row["codigo_unidad"].ToString();
                txtPrecio.Text = row["precio"].ToString();
                checkBoxEstado.Checked = Convert.ToBoolean(row["estado"].ToString());
            }
            else {
                Limpiar();
            } 
        }

        public override void Eliminar()
        {
            string codigo = clearString(txtCodigo);
            string storeProcedureEliminarProducto = string.Format("EXEC eliminarProducto {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureEliminarProducto);
            MessageBox.Show("Accion realizada con exito");
        }
        
        public override void onlyFloat(object sender, KeyPressEventArgs e)
        {
            base.onlyFloat(sender, e);
        }

        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }

        public override void validatingField(string campo, string value, TextBox txtBox)
        {
            base.validatingField(campo, value, txtBox);
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Salvar();


            // validatingField("nombre",nombre,  txtNombre);
            // validatingField("código",codigo, txtCodigo);
            // validatingField("codigo de departamento",codigoDepartamento, txtCodigoDpto);
            // validatingField("código suplidor",codigoSuplidor, txtCodigoSuplidor);
            // validatingField("código unidad", codigoUnidad, txtCodigoUnidad);
            // validatingField("estado",estado,  txtEstado);
            // validatingField("precio", precio, txtPrecio);
            // validatingField("cantidad existente", cantidadExistente, txtCantidadExistente);

        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtCodigoDpto_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtCodigoSuplidor_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCodigoSuplidor_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtCodigoUnidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void txtPrecio_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyFloat(sender, e);
        }

        private void txtCantidadExistente_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();
        }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Consultar();
        }

        private void txtCodigo_Validating(object sender, CancelEventArgs e)
        {
            Consultar();
        }
    }
}
