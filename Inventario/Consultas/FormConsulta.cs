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
    public partial class FormConsulta : FormBase
    {
        public FormConsulta()
        {
            this.puedeConsultar = true;
            this.puedeImprimir = true;
            InitializeComponent();
        }
        public string Codigo = "";

        public virtual void Seleccionar() {
            MessageBox.Show("Seleccionando");
        }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            this.Consultar();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            this.Seleccionar();   
        }
    }
}
