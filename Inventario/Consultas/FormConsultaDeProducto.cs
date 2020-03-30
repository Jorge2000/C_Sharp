using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Execution = Utilidades.ExecutionDB;
using Inventario.Reportes;

namespace Inventario.Consultas {
    public partial class FormConsultaDeProducto : FormConsulta {
        public FormConsultaDeProducto () {
            InitializeComponent ();
            this.Consultar ();
        }

        public override void Seleccionar () {
            if (dataGridView.Rows.Count == 0) return;
            Codigo = dataGridView.Rows[dataGridView.CurrentCell.RowIndex].Cells[0].Value.ToString ();
            DialogResult = DialogResult.OK;
            Close ();
        }

        public override void Consultar () {
            string query = @"
                        SELECT  producto.codigo_producto,
                            producto.nombre_producto,
                            departamento.codigo_departamento,
                            departamento.nombre_departamento,
                            suplidor.nombre_suplidor,
                            producto.cantidad_existente,
                            unidad.nombre_unidad,
                            producto.precio_de_venta
                        FROM producto
                            INNER JOIN departamento
                                ON producto.codigo_departamento = departamento.codigo_departamento
                            INNER JOIN suplidor
                                ON producto.codigo_suplidor = suplidor.codigo_suplidor
                            INNER JOIN unidad
                                ON producto.codigo_unidad =  unidad.codigo_unidad
                        WHERE ";
            string nombreProducto = clearString (txtNombre);
            if (!string.IsNullOrEmpty (nombreProducto)) {
                query += string.Format (" ( nombre_cliente LIKE('%{0}%')) AND ", nombreProducto);
            }
            string nombreDepartamento = clearString (txtDepartamento);
            if (!string.IsNullOrEmpty (nombreDepartamento)) {
                query += string.Format (" ( nombre_departamento LIKE('%{0}%')) AND ", nombreDepartamento);
            }
            string nombreProducto = clearString (txtNombre);
            if (!string.IsNullOrEmpty (nombreProducto)) {
                query += string.Format (" ( nombre_cliente LIKE('%{0}%')) AND ", nombreProducto);
            }
            string nombreProducto = clearString (txtNombre);
            if (!string.IsNullOrEmpty (nombreProducto)) {
                query += string.Format (" ( nombre_cliente LIKE('%{0}%')) AND ", nombreProducto);
            }
            DS = Execution.Ejecutar (query);
            int countTable = DS.Tables.Count;
            if (countTable > 0) {
                dataGridView.DataSource = DS.Tables[0];
            }
        }
        public override void Imprimir () {
            if (dataGridView.Rows.Count == 0) return;
            object dataSet = dataGridView.DataSource;
            FormReporteProducto ReporteProducto = new FormReporteProducto ();
            ReporteProducto.ds = dataSet;
            ReporteProducto.Show ();
        }
        private void btnBuscar_Click (object sender, EventArgs e) {
            this.Consultar ();
        }

        private void btnSeleccionar_Click (object sender, EventArgs e) {
            this.Seleccionar ();
        }

        private void btnImprimir_Click (object sender, EventArgs e) {
            Imprimir ();
        }

        private void txtNombre_TextChanged (object sender, EventArgs e) {
            this.Consultar ();
        }
    }
}