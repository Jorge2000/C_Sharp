namespace Inventario {
    partial class FormMantenimientoDeSuplidor {
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
            this.txtTelefono = new System.Windows.Forms.TextBox ();
            this.label4 = new System.Windows.Forms.Label ();
            this.txtEmail = new System.Windows.Forms.TextBox ();
            this.label = new System.Windows.Forms.Label ();
            this.label3 = new System.Windows.Forms.Label ();
            this.txtNombre = new System.Windows.Forms.TextBox ();
            this.txtCodigo = new System.Windows.Forms.TextBox ();
            this.checkBoxEstado = new System.Windows.Forms.CheckBox ();
            this.label2 = new System.Windows.Forms.Label ();
            this.panel1.SuspendLayout ();
            this.panel2.SuspendLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).BeginInit ();
            this.SuspendLayout ();
            // 
            // btnSalvar
            // 
            this.btnSalvar.FlatAppearance.BorderSize = 0;
            this.btnSalvar.Click += new System.EventHandler (this.btnSalvar_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.FlatAppearance.BorderSize = 0;
            this.btnBuscar.Click += new System.EventHandler (this.btnBuscar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.FlatAppearance.BorderSize = 0;
            this.btnEliminar.Click += new System.EventHandler (this.btnEliminar_Click);
            // 
            // panel1
            // 
            this.panel1.Size = new System.Drawing.Size (141, 375);
            // 
            // buttonCerrar
            // 
            this.buttonCerrar.FlatAppearance.BorderSize = 0;
            // 
            // label1
            // 
            this.label1.Size = new System.Drawing.Size (367, 27);
            this.label1.Text = "      Mantenimiento de Suplidores";
            // 
            // txtTelefono
            // 
            this.txtTelefono.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtTelefono.Location = new System.Drawing.Point (125, 269);
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size (252, 29);
            this.txtTelefono.TabIndex = 24;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label4.Location = new System.Drawing.Point (22, 276);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size (84, 22);
            this.label4.TabIndex = 23;
            this.label4.Text = "Telefono";
            // 
            // txtEmail
            // 
            this.txtEmail.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtEmail.Location = new System.Drawing.Point (125, 211);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size (252, 29);
            this.txtEmail.TabIndex = 22;
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.BackColor = System.Drawing.Color.Transparent;
            this.label.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label.Location = new System.Drawing.Point (22, 218);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size (57, 22);
            this.label.TabIndex = 21;
            this.label.Text = "Email";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label3.Location = new System.Drawing.Point (22, 99);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size (72, 22);
            this.label3.TabIndex = 20;
            this.label3.Text = "Código";
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtNombre.Location = new System.Drawing.Point (125, 153);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size (252, 29);
            this.txtNombre.TabIndex = 19;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.txtCodigo.Location = new System.Drawing.Point (125, 92);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size (126, 29);
            this.txtCodigo.TabIndex = 18;
            this.txtCodigo.KeyPress += new System.Windows.Forms.KeyPressEventHandler (this.txtCodigo_KeyPress);
            this.txtCodigo.Validating += new System.ComponentModel.CancelEventHandler (this.txtCodigo_Validating);
            // 
            // checkBoxEstado
            // 
            this.checkBoxEstado.AutoSize = true;
            this.checkBoxEstado.BackColor = System.Drawing.Color.Transparent;
            this.checkBoxEstado.Font = new System.Drawing.Font ("Arial", 14F);
            this.checkBoxEstado.Location = new System.Drawing.Point (26, 331);
            this.checkBoxEstado.Name = "checkBoxEstado";
            this.checkBoxEstado.Size = new System.Drawing.Size (89, 26);
            this.checkBoxEstado.TabIndex = 17;
            this.checkBoxEstado.Text = "Estado";
            this.checkBoxEstado.UseVisualStyleBackColor = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font ("Arial", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte) (0)));
            this.label2.Location = new System.Drawing.Point (22, 160);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size (78, 22);
            this.label2.TabIndex = 16;
            this.label2.Text = "Nombre";
            // 
            // FormMantenimientoDeSuplidor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF (6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size (786, 375);
            this.Controls.Add (this.txtTelefono);
            this.Controls.Add (this.label4);
            this.Controls.Add (this.txtEmail);
            this.Controls.Add (this.label);
            this.Controls.Add (this.label3);
            this.Controls.Add (this.txtNombre);
            this.Controls.Add (this.txtCodigo);
            this.Controls.Add (this.checkBoxEstado);
            this.Controls.Add (this.label2);
            this.Name = "FormMantenimientoDeSuplidor";
            this.Text = "";
            this.Controls.SetChildIndex (this.panel1, 0);
            this.Controls.SetChildIndex (this.panel2, 0);
            this.Controls.SetChildIndex (this.label2, 0);
            this.Controls.SetChildIndex (this.checkBoxEstado, 0);
            this.Controls.SetChildIndex (this.txtCodigo, 0);
            this.Controls.SetChildIndex (this.txtNombre, 0);
            this.Controls.SetChildIndex (this.label3, 0);
            this.Controls.SetChildIndex (this.label, 0);
            this.Controls.SetChildIndex (this.txtEmail, 0);
            this.Controls.SetChildIndex (this.label4, 0);
            this.Controls.SetChildIndex (this.txtTelefono, 0);
            this.panel1.ResumeLayout (false);
            this.panel2.ResumeLayout (false);
            this.panel2.PerformLayout ();
            ((System.ComponentModel.ISupportInitialize) (this.DS)).EndInit ();
            this.ResumeLayout (false);
            this.PerformLayout ();

        }

        #endregion

        private System.Windows.Forms.TextBox txtTelefono;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.CheckBox checkBoxEstado;
        private System.Windows.Forms.Label label2;
    }
}