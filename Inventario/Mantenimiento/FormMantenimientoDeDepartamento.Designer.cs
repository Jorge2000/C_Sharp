namespace Inventario.Mantenimiento {
    partial class FormMantenimientoDeDepartamento {
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
            this.label3 = new System.Windows.Forms.Label ();
            this.txtNombre = new System.Windows.Forms.TextBox ();
            this.txtCodigo = new System.Windows.Forms.TextBox ();
            this.checkBoxEstado = new System.Windows.Forms.CheckBox ();
            this.label2 = new System.Windows.Forms.Label ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            this.SuspendLayout ();
            // 
            // btnSalvar
            // 
            this.btnSalvar.FlatAppearance.BorderSize = 0;
            this.btnSalvar.Click += new System.EventHandler (this.btnSalvar_Click_1);
            // 
            // btnBuscar
            // 
            this.btnBuscar.FlatAppearance.BorderSize = 0;
            this.btnBuscar.Click += new System.EventHandler (this.btnBuscar_Click_1);
            // 
            // btnEliminar
            // 
            this.btnEliminar.FlatAppearance.BorderSize = 0;
            this.btnEliminar.Click += new System.EventHandler (this.btnEliminar_Click_1);
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            this.buttonCerrar.Click += new System.EventHandler (this.buttonCerrar_Click_1);
            // 
            // label1
            // 
            this.label1.Size = new System.Drawing.Size (413, 27);
            this.label1.Text = "      Mantenimiento de departamentos";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label3.Location = new System.Drawing.Point (23, 102);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size (72, 22);
            this.label3.TabIndex = 11;
            this.label3.Text = "Código";
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtNombre.Location = new System.Drawing.Point (126, 156);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size (177, 29);
            this.txtNombre.TabIndex = 10;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCodigo.Location = new System.Drawing.Point (126, 95);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size (177, 29);
            this.txtCodigo.TabIndex = 9;
            this.txtCodigo.Validating += new System.ComponentModel.CancelEventHandler (this.txtCodigo_Validating_1);
            // 
            // checkBoxEstado
            // 
            this.checkBoxEstado.AutoSize = true;
            this.checkBoxEstado.BackColor = System.Drawing.Color.Transparent;
            this.checkBoxEstado.Font = new System.Drawing.Font ("Arial", 14F);
            this.checkBoxEstado.Location = new System.Drawing.Point (27, 213);
            this.checkBoxEstado.Name = "checkBoxEstado";
            this.checkBoxEstado.Size = new System.Drawing.Size (89, 26);
            this.checkBoxEstado.TabIndex = 8;
            this.checkBoxEstado.Text = "Estado";
            this.checkBoxEstado.UseVisualStyleBackColor = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label2.Location = new System.Drawing.Point (23, 163);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size (78, 22);
            this.label2.TabIndex = 7;
            this.label2.Text = "Nombre";
            // 
            // FormMantenimientoDeDepartamento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (786, 362);
            this.Controls.Add (this.label3);
            this.Controls.Add (this.txtNombre);
            this.Controls.Add (this.txtCodigo);
            this.Controls.Add (this.checkBoxEstado);
            this.Controls.Add (this.label2);
            this.Name = "FormMantenimientoDeDepartamento";
            this.Text = "Mantenimiento de departamentos";
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.label2, 0);
            this.Controls.SetChildIndex (this.checkBoxEstado, 0);
            this.Controls.SetChildIndex (this.txtCodigo, 0);
            this.Controls.SetChildIndex (this.txtNombre, 0);
            this.Controls.SetChildIndex (this.label3, 0);
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            this.ResumeLayout (false);
            this.PerformLayout ();

        }

        #endregion

        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.CheckBox checkBoxEstado;
        private System.Windows.Forms.Label label2;
    }
}