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
    public partial class FormConsultaDeDepartamento : FormConsulta
    {
        public FormConsultaDeDepartamento()
        {
            InitializeComponent();
        }

        public override void fillDataGrid(string table, TextBox field, string column, DataGridView dataGridView)
        {
            base.fillDataGrid(table, field, column, dataGridView);
        }

        public void seleccionar() {
            if (dataGridView.Rows.Count == 0) return;
            string codigo = dataGridView.Rows[dataGridView.CurrentCell.RowIndex].Cells[0].Value.ToString();
            DialogResult = DialogResult.OK;
            Close();
        
        }
        public string codigo = "";
        public override void Consultar()
        {
           /* string nombre = clearString(txtNombre);
            string quey = "SELECT * FROM departamento ";
            if (!string.IsNullOrEmpty(nombre)) {

                quey += " WHERE nombre_departamento LIKE '%" + nombre + " %'";
                DS = Utilidades.ExecutionDB(quey);
                if (DS.Tables.Count > 0) 
                {
                    dataGridView.RecordSource = DS.Tables[0];
                }
            }
            FormConsultaDeDepartamento ConsultaDeDepartamento = new FormConsultaDeDepartamento();
            if (ConsultaDeDepartamento.ShowDialog() == DialogResult.OK)
            {
                codigo.Text = ConsultaDeDepartamento.txtCodigo_TextChanged;
                codigo.Focuse();

            }
            ConsultaDeDepartamento.Dispose();*/
        }
        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            fillDataGrid("departamento", txtNombre, "nombre", dataGridView);
        }
    }
}
