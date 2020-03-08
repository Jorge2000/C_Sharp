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
    public partial class FormMantenimientoUnidades : FormMantenimiento
    {
        public FormMantenimientoUnidades()
        {
            InitializeComponent();
        }

        public override void Salvar()
        {
            string nombre = clearString(txtNombre);
            string codigo = clearString(txtCodigo);
            string estado = checkBoxEstado.Text;
            string storeProcedureUpsertUnidad = string.Format("EXEC upsertUnidad {0}, {1}, {2}", codigo, nombre, estado );
            DS = Execution.Ejecutar(storeProcedureUpsertUnidad);
            MessageBox.Show("Accion realizada con exito");
        }

        public override void Consultar()
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarUnidad = string.Format("EXEC consultarUnidad {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarUnidad);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                txtNombre.Text =  row["nombre_unidad"].ToString().Trim();;
                checkBoxEstado.Checked = Convert.ToBoolean(row["estado"]);;
            }
            else
            {
                Limpiar();
            }  
        }

        public override void Eliminar()
        {
            string codigo = txtCodigo.Text.Trim();
            string storeProcedureEliminarUnidad = string.Format("EXEC eliminarUnidad {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureEliminarUnidad);
            MessageBox.Show("Accion realizada con exito");
        }
        
        private void checkBoxEstado_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Salvar();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Consultar();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();
        }

        private void buttonCerrar_Click(object sender, EventArgs e)
        {
            Dispose();
        }
    }
}
