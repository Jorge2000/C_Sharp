namespace Inventario {
    partial class FormReporteFactuca2 {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose (bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose ();
            }
            base.Dispose (disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent () {
            this.components = new System.ComponentModel.Container ();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource ();
            this.consultarVentasBindingSource = new System.Windows.Forms.BindingSource (this.components);
            this.DataSet1 = new Inventario.DataSet1 ();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer ();
            this.consultarVentasTableAdapter = new Inventario.DataSet1TableAdapters.consultarVentasTableAdapter ();
            this.DataSetFactura = new Inventario.DataSetFactura ();
            this.DataTable1BindingSource = new System.Windows.Forms.BindingSource (this.components);
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.consultarVentasBindingSource)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataSet1)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataSetFactura)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataTable1BindingSource)).BeginInit ();
            this.SuspendLayout ();
            // 
            // panel1
            // 
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler (this.panel1_Paint);
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            // 
            // consultarVentasBindingSource
            // 
            this.consultarVentasBindingSource.DataMember = "consultarVentas";
            this.consultarVentasBindingSource.DataSource = this.DataSet1;
            // 
            // DataSet1
            // 
            this.DataSet1.DataSetName = "DataSet1";
            this.DataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.DataTable1BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add (reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Inventario.ReportFactura2.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point (0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size (977, 499);
            this.reportViewer1.TabIndex = 4;
            // 
            // consultarVentasTableAdapter
            // 
            this.consultarVentasTableAdapter.ClearBeforeFill = true;
            // 
            // DataSetFactura
            // 
            this.DataSetFactura.DataSetName = "DataSetFactura";
            this.DataSetFactura.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // DataTable1BindingSource
            // 
            this.DataTable1BindingSource.DataMember = "DataTable1";
            this.DataTable1BindingSource.DataSource = this.DataSetFactura;
            // 
            // FormReporteFactuca2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (1117, 499);
            this.Controls.Add (this.reportViewer1);
            this.Name = "FormReporteFactuca2";
            this.Text = "FormReporteFactuca2";
            this.Load += new System.EventHandler (this.FormReporteFactuca2_Load);
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.reportViewer1, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.consultarVentasBindingSource)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataSet1)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataSetFactura)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.DataTable1BindingSource)).EndInit ();
            this.ResumeLayout (false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource consultarVentasBindingSource;
        private DataSet1 DataSet1;
        private DataSet1TableAdapters.consultarVentasTableAdapter consultarVentasTableAdapter;
        private System.Windows.Forms.BindingSource DataTable1BindingSource;
        private DataSetFactura DataSetFactura;
    }
}