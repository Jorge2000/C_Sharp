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
            string nombre = clearString(txtNombre);
            string codigo = clearString(txtCodigo);
            string estado = (checkBoxEstado.Checked) ? "1" : "0";
            string storeProcedureUpsertDepartamento = string.Format("EXEC upsertDepartamento @codigo_departamento = {0}, @nombre_departamento = '{1}', @estado = {2}", codigo, nombre, estado);
            DS = Execution.Ejecutar(storeProcedureUpsertDepartamento);
            MessageBox.Show("Accion realizada con exito");
            Limpiar();
        }

        public override void Eliminar()
        {

            string codigo = clearString(txtCodigo);
            if (!string.IsNullOrEmpty(codigo)) {
            string storeProcedureEliminarDepartamento = string.Format("EXEC eliminarDepartamento {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureEliminarDepartamento);
            MessageBox.Show("Accion realizada con exito");
            Limpiar();}
        }

        public void Consulta()
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarCliente = string.Format("EXEC consultarDepartamento {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarCliente);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0)
            {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text = row["nombre_departamento"].ToString().Trim();
                checkBoxEstado.Checked = Convert.ToBoolean(row["estado"]);
            }      

        }
        
        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void FormRegistroDeDepartamento_Load(object sender, EventArgs e)
        {

        }

        public override void Consultar()
        {
            FormConsultaDeDepartamento ConsultaDeDepartamento = new FormConsultaDeDepartamento();
            if (ConsultaDeDepartamento.ShowDialog() == DialogResult.OK)
            {
                txtCodigo.Text = ConsultaDeDepartamento.Codigo;
                SendKeys.Send("{TAB}");
            }
            ConsultaDeDepartamento.Dispose();
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

        private void btnSalvar_Click_1(object sender, EventArgs e)
        {
            Salvar();
        }

        private void btnEliminar_Click_1(object sender, EventArgs e)
        {
            Eliminar();
        }

        private void btnBuscar_Click_1(object sender, EventArgs e)
        {
            Consultar();
        }

        private void buttonCerrar_Click_1(object sender, EventArgs e)
        {
            Dispose();
        }

        private void txtCodigo_Validating_1(object sender, CancelEventArgs e)
        {
            Consulta();
        }
    }
}
