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
            txtEstado.Text = "";
        }

        public override void Consultar()
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string query = string.Format("SELECT * FROM productos WHERE codigo_producto = '{0}'", codigo);
            DS = Execution.Ejecutar(query);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0)
            {
                DataRow row = DS.Tables[0].Rows[0];
                string nombre = row["nombre_producto"].ToString().Trim();
                string codigoDpto = row["codigo_departamento"].ToString().Trim();
                string codigoSuplidor = row["codigo_suplidor"].ToString().Trim();
                string cantidadExistente = row["cantidad_existente"].ToString().Trim();
                string punReo = row["pun_reo"].ToString().Trim();
                string codigoUnidad = row["codigo_unidad"].ToString().Trim();
                string precio = row["precio"].ToString().Trim();
                string estado = row["estado"].ToString().Trim();


                txtNombre.Text = nombre;
                txtCodigoDpto.Text = codigoDpto;
                txtCodigoSuplidor.Text = codigoSuplidor;
                txtCantidadExistente.Text = cantidadExistente;
                txtPunReo.Text = punReo;
                txtCodigoUnidad.Text = codigoUnidad;
                txtPrecio.Text = precio;
                txtEstado.Text = estado;

                // bool estado = Convert.ToBoolean(row["status"]);
                // checkBoxEstado.Checked = estado;
            }
            else
            {
                Limpiar();
            }            
        }
        public override void onlyFloat(object sender, KeyPressEventArgs e)
        {
            base.onlyFloat(sender, e);
        }

        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }

        public override void validatingField(string campo, string value ,TextBox txtBox)
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
            string nombre = clearString(txtNombre);
            string codigo = clearString(txtCodigo);
            string codigoDepartamento = clearString(txtCodigoDpto);
            string codigoSuplidor = clearString(txtCodigoSuplidor);
            string codigoUnidad = clearString(txtCodigoUnidad);
            string estado = clearString(txtEstado);
            string precio = clearString(txtPrecio);
            string cantidadExistente = clearString(txtCantidadExistente);
            validatingField("nombre",nombre,  txtNombre);
            validatingField("código",codigo, txtCodigo);
            validatingField("codigo de departamento",codigoDepartamento, txtCodigoDpto);
            validatingField("código suplidor",codigoSuplidor, txtCodigoSuplidor);
            validatingField("código unidad", codigoUnidad, txtCodigoUnidad);
            validatingField("estado",estado,  txtEstado);
            validatingField("precio", precio, txtPrecio);
            validatingField("cantidad existente", cantidadExistente, txtCantidadExistente);

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
    }
}
