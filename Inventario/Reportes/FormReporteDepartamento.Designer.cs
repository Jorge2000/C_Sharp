namespace Inventario.Reportes {
    partial class FormReporteDepartamento {
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
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer ();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).BeginInit ();
            this.SuspendLayout ();
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            this.buttonCerrar.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.Size = new System.Drawing.Size (336, 31);
            this.label1.Text = "    Reporte de departamento";
            // 
            // reportViewer1
            // 
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Inventario.Reports.ReportDepartamento.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point (18, 100);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size (623, 387);
            this.reportViewer1.TabIndex = 3;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CalendarFont = new System.Drawing.Font ("Arial", 14.25F);
            this.dateTimePicker1.CalendarForeColor = System.Drawing.Color.White;
            this.dateTimePicker1.CalendarTitleBackColor = System.Drawing.Color.White;
            this.dateTimePicker1.CalendarTitleForeColor = System.Drawing.Color.Transparent;
            this.dateTimePicker1.CalendarTrailingForeColor = System.Drawing.Color.Transparent;
            this.dateTimePicker1.Enabled = false;
            this.dateTimePicker1.Font = new System.Drawing.Font ("Arial", 10F);
            this.dateTimePicker1.Location = new System.Drawing.Point (400, 71);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size (241, 23);
            this.dateTimePicker1.TabIndex = 1;
            // 
            // FormReporteDepartamento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (804, 499);
            this.Controls.Add (this.dateTimePicker1);
            this.Controls.Add (this.reportViewer1);
            this.Name = "FormReporteDepartamento";
            this.Text = "Reporte de departamento";
            this.Load += new System.EventHandler (this.FormReporteDepartamento_Load);
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.reportViewer1, 0);
            this.Controls.SetChildIndex (this.dateTimePicker1, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).EndInit ();
            this.ResumeLayout (false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}