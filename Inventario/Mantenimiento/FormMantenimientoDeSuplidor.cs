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
    public partial class FormMantenimientoDeSuplidor : FormMantenimiento
    {
        public FormMantenimientoDeSuplidor()
        {
            InitializeComponent();
        }

        public override bool IsValidEmail(string email)
        {
            return base.IsValidEmail(email);
        }

        public override void Eliminar()
        {
            string codigo = clearString(txtCodigo);
            string select = string.Format("IF EXISTS (SELECT * FROM suplidores WHERE codigo_suplidor = '{0}')", codigo);
            string delete = string.Format(" DELETE FROM INTO suplidores WHERE codigo_suplidor = '{0}'", codigo);
            string deleteClient = select + delete;

            DS = Execution.Ejecutar(deleteClient);
            MessageBox.Show("Se ha salvado la informacion");
        }
        public override void Limpiar()
        {
            txtNombre.Text = "";
            txtCodigo.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            checkBoxEstado.Checked = false;
        }

        public override void Salvar()
        {
            string nombre = clearString(txtNombre);
            string email = clearString(txtEmail);
            string codigo = clearString(txtCodigo);
            string telefono = clearString(txtTelefono);
            string estado = checkBoxEstado.Text;
            string storeProcedureUpsertSuplidor = string.Format("EXEC upsertSuplidor {0}, {1}, {2}, {3}, {4}", codigo, nombre, email, telefono, estado);
            if (IsValidEmail(email))
            {
                DS = Execution.Ejecutar(storeProcedureUpsertSuplidor);
                MessageBox.Show("Accion realizada con exito");
            }
            else
            {
                MessageBox.Show("Por favor revise su correo electrónico");
            }
        }

        public override void Consultar()
        {
            string codigo = txtCodigo.Text;
            if (string.IsNullOrEmpty(codigo)) return;

            string storeProcedureConsultarSuplidor = string.Format("EXEC consultarSuplidor {0}", codigo);
            DS = Execution.Ejecutar(storeProcedureConsultarSuplidor);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            DataRow row = DS.Tables[0].Rows[0];
            if (countTable > 0 && countRows > 0)
            {
                txtTelefono.Text= row["telefono"].ToString();
                txtNombre.Text = row["nombre_suplidor"].ToString();
                txtEmail.Text = row["email"].ToString();
                checkBoxEstado.Checked = Convert.ToBoolean(row["estado"]);
            }
            else
            {
                Limpiar();
            } 
        }
        
        public override void onlyInteger(object sender, KeyPressEventArgs e)
        {
            base.onlyInteger(sender, e);
        }
        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            onlyInteger(sender, e);
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Consultar();

        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {


        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();
        }
    }
}
