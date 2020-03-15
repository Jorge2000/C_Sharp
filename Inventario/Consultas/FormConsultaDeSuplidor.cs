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

namespace Inventario {
    public partial class FormConsultaDeSuplidor : FormConsulta {
        public FormConsultaDeSuplidor () {
            InitializeComponent ();
        }

        public override void Consultar () {
            string query = "SELECT * FROM suplidor ";
            string value = clearString (txtNombre);
            if (!string.IsNullOrEmpty (value)) {
                query += string.Format (" WHERE nombre_suplidor LIKE('%{0}%')", value);

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
            FormReporteSuplidor ReporteSuplidor = new FormReporteSuplidor ();
            ReporteSuplidor.ds = dataSet;
            ReporteSuplidor.Show ();
        }
        public override void Seleccionar () {
            if (dataGridView.Rows.Count == 0) return;
            Codigo = dataGridView.Rows[dataGridView.CurrentCell.RowIndex].Cells[0].Value.ToString ();
            DialogResult = DialogResult.OK;
            Close ();
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
    }
}