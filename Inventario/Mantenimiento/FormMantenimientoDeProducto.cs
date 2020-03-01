using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Inventario.Mantenimiento
{
    public partial class FormMantenimientoDeProducto : FormMantenimiento
    {
        public FormMantenimientoDeProducto()
        {
            InitializeComponent();
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
