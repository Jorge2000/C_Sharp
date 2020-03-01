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
    public partial class FormMantenimientoDeDepartamento : FormMantenimiento
    {
        public FormMantenimientoDeDepartamento()
        {
            InitializeComponent();
        }

        public override void Limpiar()
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            checkBoxEstado.Checked = false;
        }

        
        public override void Salvar()
        {
            string nombre = txtCodigo.Text.Trim();
            string codigo = txtCodigo.Text.Trim();
            bool estado = checkBoxEstado.Checked;
            if (string.IsNullOrEmpty(nombre))
            {
                MessageBox.Show("Debe de indicar el nombre");
                txtNombre.Focus();
                return;
            }
            string queryStoreProcedure = string.Format("EXEC actualizar_departamentos '{0}', '{1}', '{2}'", codigo, nombre, estado);
            Execution.Ejecutar(queryStoreProcedure);
            Limpiar();
        }


        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string codigo = clearString(txtCodigo);
            string nombre = clearString(txtNombre);
            validatingField("código", codigo, txtNombre);
            validatingField("nombre", nombre, txtNombre);
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {

        }

        private void FormRegistroDeDepartamento_Load(object sender, EventArgs e)
        {

        }

        private void txtCodigo_Validating(object sender, CancelEventArgs e)
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string query = string.Format("SELECT * FROM departamento WHERE codigo_departamento = '{0}'", codigo);
            DS = Execution.Ejecutar(query);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                string nombre = row["nombre_departamento"].ToString().Trim();
                bool estado = Convert.ToBoolean(row["status"]);
                txtNombre.Text = nombre;
                checkBoxEstado.Checked = estado;
            }
            else
            {
                Limpiar();
            }
        }

        public override void validatingField(string campo, string value, TextBox txtBox)
        {
            base.validatingField(campo, value, txtBox);
        }

        public override string clearString(TextBox str)
        {
            return base.clearString(str);
        }

        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void checkBoxEstado_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
