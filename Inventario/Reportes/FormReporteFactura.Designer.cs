namespace Inventario.Reportes {
    partial class FormReporteFactura {
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView ();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).BeginInit ();
            ((System.ComponentModel.ISupportInitialize) (this.dataGridView1)).BeginInit ();
            this.SuspendLayout ();
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            this.buttonCerrar.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.Size = new System.Drawing.Size (255, 31);
            this.label1.Text = "    Reporte de factura";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point (19, 99);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size (618, 391);
            this.dataGridView1.TabIndex = 3;
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
            this.dateTimePicker1.Location = new System.Drawing.Point (396, 70);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size (241, 23);
            this.dateTimePicker1.TabIndex = 1;
            // 
            // FormReporteFactura
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (804, 499);
            this.Controls.Add (this.dateTimePicker1);
            this.Controls.Add (this.dataGridView1);
            this.Name = "FormReporteFactura";
            this.Text = "Reporte de factura";
            this.Load += new System.EventHandler (this.FormReporteFactura_Load);
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.dataGridView1, 0);
            this.Controls.SetChildIndex (this.dateTimePicker1, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.ep)).EndInit ();
            ((System.ComponentModel.ISupportInitialize) (this.dataGridView1)).EndInit ();
            this.ResumeLayout (false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}