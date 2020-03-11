namespace Inventario.Reportes {
    partial class FormReporte {
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
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            this.SuspendLayout ();
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point (664, 0);
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Location = new System.Drawing.Point (0, 58);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size (658, 373);
            this.reportViewer1.TabIndex = 3;
            // 
            // FormReporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (804, 499);
            this.Controls.Add (this.reportViewer1);
            this.Name = "FormReporte";
            this.Text = "FormReporte";
            this.Load += new System.EventHandler (this.FormReporte_Load);
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.reportViewer1, 0);
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            this.ResumeLayout (false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
    }
}