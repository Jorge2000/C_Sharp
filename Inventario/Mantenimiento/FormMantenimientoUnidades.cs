﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;
using Inventario.Consultas;

namespace Inventario.Mantenimiento
{
    public partial class FormMantenimientoUnidades : FormMantenimiento
    {
        public FormMantenimientoUnidades()
        {
            InitializeComponent();
        }

        public override void Limpiar()
        {
            txtNombre.Text = "";
            txtCodigo.Text = "";
            checkBoxEstado.Checked = false;
        }
        public override void Salvar()
        {
            if (Controles.ValidarForm(this, ep, false)) return;
            string nombre = clearString(txtNombre);
            string codigo = clearString(txtCodigo);
            string estado = (checkBoxEstado.Checked) ? "1" : "0";
            string storeProcedureUpsertUnidad = string.Format("EXEC upsertUnidad @codigo_unidad = {0}, @nombre_unidad = '{1}', @estado = {2}", codigo, nombre, estado);

                DS = Execution.Ejecutar(storeProcedureUpsertUnidad);
                MessageBox.Show("Accion realizada con exito");
            
            Limpiar();
        }

        public void Consulta()
        {
            string codigo = txtCodigo.Text.Trim();
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarUnidad = string.Format("EXEC consultarUnidad {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarUnidad);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0)
            {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text =  row["nombre_unidad"].ToString().Trim();;
                checkBoxEstado.Checked = Convert.ToBoolean(row["estado"]);;
            } 
        }
        public override void Consultar()
        {
            FormConsultaUnidad ConsultaUnidad = new FormConsultaUnidad();
            if (ConsultaUnidad.ShowDialog() == DialogResult.OK)
            {
                txtCodigo.Text = ConsultaUnidad.Codigo;
                SendKeys.Send("{TAB}");
            }
            ConsultaUnidad.Dispose();
        }
        


        public override void Eliminar()
        {
            string codigo = txtCodigo.Text.Trim();
            if (!string.IsNullOrEmpty(codigo)) {
            string storeProcedureEliminarUnidad = string.Format("EXEC eliminarUnidad {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureEliminarUnidad);
            MessageBox.Show("Accion realizada con exito");}
            Limpiar();
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

        private void txtCodigo_Validating(object sender, CancelEventArgs e)
        {
            Consulta();
        }
    }
}