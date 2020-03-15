using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;
using Inventario.Consultas;

namespace Inventario.Procesos {
    public partial class FormProcesosVentas : FormProcesos {
        DataTable table = new DataTable();

        public FormProcesosVentas () {
            InitializeComponent ();
        }

        public void LimpiarCliente () {
            txtNombre.Text = "";
            txtCodigo.Text = "";
        }

        public void LimpiarProducto () {
            txtCodigoProducto.Text = "";
            txtNombreProducto.Text = "";
            txtPrecioProducto.Text = "";
            txtCantidadAVender.Text = "";
        }

        public void ConsultaCliente () {
            string codigo = txtCodigo.Text.Trim ();
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarCliente = string.Format ("EXEC consultarCliente {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarCliente);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;

            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombre.Text = row["nombre_cliente"].ToString ().Trim ();

            }

        }

        public void ConsultarCliente () {
            FormConsultaDeCliente ConsultaDeCliente = new FormConsultaDeCliente ();
            if (ConsultaDeCliente.ShowDialog () == DialogResult.OK) {
                txtCodigo.Text = ConsultaDeCliente.Codigo;
            }
            ConsultaDeCliente.Dispose ();
        }

        public void ConsultaProducto () {
            string codigo = clearString (txtCodigoProducto);
            if (string.IsNullOrEmpty (codigo)) return;

            string storeProcedureConsultarProducto = string.Format ("EXEC consultarProducto {0}", codigo);
            DS = Execution.Ejecutar (storeProcedureConsultarProducto);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0) {
                DataRow row = DS.Tables[0].Rows[0];
                txtNombreProducto.Text = row["nombre_producto"].ToString ();
                txtPrecioProducto.Text =  row["precio_de_venta"].ToString ();
            }
        }

        public void ConsultarProducto () {
            FormConsultaDeProducto ConsultaDeProducto = new FormConsultaDeProducto();
            if (ConsultaDeProducto.ShowDialog() == DialogResult.OK)
            {
                txtCodigoProducto.Text = ConsultaDeProducto.Codigo;
                SendKeys.Send("{TAB}");
            }
            ConsultaDeProducto.Dispose();      
        
        }

        public void fillCliente () {
            string codigo = clearString (txtCodigo);
            if (string.IsNullOrEmpty (codigo)) {
                nuevoProcesos();
            } else {
                SendKeys.Send ("{TAB}");
            }

        }

        public void fillProducto () {
            string codigo = clearString (txtCodigoProducto);
            if (string.IsNullOrEmpty (codigo)) {
                LimpiarProducto ();
            } else {
                SendKeys.Send ("{TAB}");
            }
        }

        public void nuevoProcesos () {
            dataGridView1.DataSource = null;
            LimpiarCliente ();
            LimpiarProducto ();
            txtTotal.Text = "";
        }

        public bool validateTextBoxs() {
            string codigoCliente = clearString(txtCodigo);
            string nombreCliente = clearString(txtNombre);
            string codigo = clearString(txtCodigoProducto);
            string nombreProducto = clearString(txtNombreProducto);
            string cantidadAVender = clearString(txtCantidadAVender);
            string precioProducto = clearString(txtPrecioProducto);

            return (string.IsNullOrEmpty(codigoCliente) || string.IsNullOrEmpty(nombreCliente) || string.IsNullOrEmpty(codigo) || string.IsNullOrEmpty(nombreProducto) || string.IsNullOrEmpty(cantidadAVender) || string.IsNullOrEmpty(precioProducto));
        }

        public void calculateTotal() {
            int sum = 0;
            for (int row = 0; row < dataGridView1.Rows.Count; row++)
            {
                sum += Convert.ToInt32(dataGridView1.Rows[row].Cells[4].Value);
            }
            txtTotal.Text = sum.ToString();      
        
        }
        
        public void agregarProductos() {
            if (validateTextBoxs()) { message("Debe de llenar todos los campos"); }
            string codigo = clearString(txtCodigoProducto);
            string nombreProducto = clearString(txtNombreProducto);
            string cantidadAVender = clearString(txtCantidadAVender);
            string precioProducto = clearString(txtPrecioProducto);
            string importe = (Int16.Parse(cantidadAVender) * Int16.Parse(precioProducto)).ToString();

            table.Rows.Add(codigo, nombreProducto, cantidadAVender, precioProducto, importe);
            dataGridView1.DataSource = table;
            calculateTotal();
            LimpiarProducto();
        }

        public void eliminarProductos() {
            foreach (DataGridViewRow item in dataGridView1.SelectedRows)
            {
                dataGridView1.Rows.RemoveAt(item.Index);
            }
            calculateTotal();
        }


        public void validarCantidad() {
            string codigo = clearString(txtCodigoProducto);
            string cantidadAVender = clearString(txtCantidadAVender);

            if (string.IsNullOrEmpty(codigo) || string.IsNullOrEmpty(cantidadAVender)) return;
            string storeProcedureConsultarProducto = string.Format("EXEC consultarProducto {0}", codigo);

            DS = Execution.Ejecutar(storeProcedureConsultarProducto);
            int countTable = DS.Tables.Count;
            int countRows = DS.Tables[0].Rows.Count;
            if (countTable > 0 && countRows > 0)
            {
                DataRow row = DS.Tables[0].Rows[0];
                string nombreProducto = row["nombre_producto"].ToString();
                int cantidadExistente = Convert.ToInt16(row["cantidad_existente"].ToString());
                int cantidadAVenderInt = Convert.ToInt16(cantidadAVender);
                if (cantidadAVenderInt > cantidadExistente)
                { 
                    string messageText = string.Format("Est�s intentando vender una cantidad que excede la cantidad existente del producto: {0}\nla cantidad existente es de ${1}", nombreProducto, cantidadExistente);
                    message(messageText);
                    txtCantidadAVender.Text = "";
                
                }
            }
            
        }

        private void txtCodigo_TextChanged_1 (object sender, EventArgs e) {
            fillCliente ();
        }

        private void txtCodigo_Validating_1 (object sender, CancelEventArgs e) {
            ConsultaCliente ();
        }

        private void linkLabel1_LinkClicked_1 (object sender, LinkLabelLinkClickedEventArgs e) {
            ConsultarCliente ();
        }

        private void txtCodigo_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void btnNuevo_Click (object sender, EventArgs e) {
            nuevoProcesos ();
        }

        private void btnConsultar_Click (object sender, EventArgs e) {
            ConsultarProducto();
        }

        private void txtCodigoProducto_TextChanged (object sender, EventArgs e) {
            fillProducto ();
        }

        private void txtCodigoProducto_Validating (object sender, CancelEventArgs e) {
            ConsultaProducto();
        }

        private void txtCodigoProducto_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtCantidadProducto_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void txtPrecioProducto_KeyPress (object sender, KeyPressEventArgs e) {
            onlyInteger (sender, e);
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ConsultarProducto();
        }

        private void txtCantidadAVender_Validating(object sender, CancelEventArgs e)
        {
            validarCantidad();
        }

        private void btnConsultarCliente_Click(object sender, EventArgs e)
        {
            ConsultarCliente();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            agregarProductos();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FormProcesosVentas_Load(object sender, EventArgs e)
        {
            table.Columns.Add("C�digo", typeof(string));
            table.Columns.Add("Producto", typeof(string));
            table.Columns.Add("Cantidad", typeof(string));
            table.Columns.Add("Precio", typeof(string));
            table.Columns.Add("Importe", typeof(string));
            txtTotal.Text = "0";
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.DataSource = table;
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            eliminarProductos();
        }

    }
}